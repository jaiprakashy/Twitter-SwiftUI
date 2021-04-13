//
//  SearchViewModel.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 13/04/21.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { (snapshot, _) in
            guard let documents = snapshot?.documents else { return }
            
            self.users = documents.map({ User(dictionary: $0.data()) })
        }
    }
}
