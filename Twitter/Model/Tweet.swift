//
//  Tweet.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 14/04/21.
//

import Firebase

struct Tweet: Identifiable {
    let id: String
    let username: String
    let fullname: String
    let profileImageUrl: String
    let caption: String
    let timestamp: Timestamp
    let likes: Int
    let uid: String
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["id"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.uid = dictionary["uid"] as? String ?? ""
        self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp(date: Date())
    }
}
