//
//  AuthViewModel.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 12/04/21.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var isAuthenticating: Bool = false
    @Published var error: Error?
//    @Published var user: User?
    
    init() {
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Failed to login: \(error.localizedDescription)")
                return
            }
            print("Successful login")
            self.userSession = result?.user
        }
    }
    
    func register(email: String, password: String, username: String, fullname: String, profileImage: UIImage) {
        
        guard let imageData = profileImage.jpegData(compressionQuality: 0.3) else { return }
        let fileName = NSUUID().uuidString
        let storageRef = Storage.storage().reference().child(fileName)
        storageRef.putData(imageData, metadata: nil) { (_, error) in
            if let error = error {
                print("Failed to upload image \(error.localizedDescription)")
                return
            }
            print("Successfully uploaded user photo")
            storageRef.downloadURL { (url, _) in
                guard let profileImageUrl = url?.absoluteString else { return }
                
                Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                        return
                    }
                    print("Successfully signed up")
                    
                    guard let user = result?.user else { return }
                    
                    let data = ["email": email, "username": username, "fullname": fullname, "profileImageUrl": profileImageUrl, "uid": user.uid]
                    
                    Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                        print("Successfully uploaded user data")
                        self.userSession = user
                    }
                }
                
            }
        }
    }
    
    func signOut() {
        userSession = nil
        try? Auth.auth().signOut()
    }
    
    func fetchUser() {
        guard let uid = userSession?.uid else { return }
        
        Firestore.firestore().collection("users").document(uid).getDocument { (snapshot, _) in
            guard let data = snapshot?.data() else { return }
            let user = User(dictionary: data)
            print("User is \(user.username)")
        }
    }
}
