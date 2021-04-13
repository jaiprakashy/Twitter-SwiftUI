//
//  User.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 13/04/21.
//

import Foundation

struct User: Identifiable {
    let id: String
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["uid"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
    }
}
