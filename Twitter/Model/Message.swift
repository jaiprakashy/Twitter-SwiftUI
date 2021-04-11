//
//  Message.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let mockMessages: [MockMessage] = [.init(id: 0, imageName: "spiderman", messageText: "Hey bro, wassup?", isCurrentUser: false),
                                   .init(id: 1, imageName: "batman", messageText: "Not much, you?", isCurrentUser: true),
                                   .init(id: 2, imageName: "batman", messageText: "How's your life with the Godzilla", isCurrentUser: true),
                                   .init(id: 3, imageName: "spiderman", messageText: "superfun", isCurrentUser: false),
                                   .init(id: 4, imageName: "spiderman", messageText: "Have you had an accident last summer..I heard from the Joker", isCurrentUser: false),
                                   .init(id: 5, imageName: "batman", messageText: "just rumours", isCurrentUser: true),
                                   .init(id: 6, imageName: "spiderman", messageText: "cool!!", isCurrentUser: false),
                                   .init(id: 0, imageName: "spiderman", messageText: "Hey bro, wassup?", isCurrentUser: false),
                                   .init(id: 1, imageName: "batman", messageText: "Not much, you?", isCurrentUser: true),
                                   .init(id: 2, imageName: "batman", messageText: "How's your life with the Godzilla", isCurrentUser: true),
                                   .init(id: 3, imageName: "spiderman", messageText: "superfun", isCurrentUser: false),
                                   .init(id: 4, imageName: "spiderman", messageText: "Have you had an accident last summer..I heard from the Joker", isCurrentUser: false),
                                   .init(id: 5, imageName: "batman", messageText: "just rumours", isCurrentUser: true),
                                   .init(id: 6, imageName: "spiderman", messageText: "cool!!", isCurrentUser: false),
                                   .init(id: 0, imageName: "spiderman", messageText: "Hey bro, wassup?", isCurrentUser: false),
                                   .init(id: 1, imageName: "batman", messageText: "Not much, you?", isCurrentUser: true),
                                   .init(id: 2, imageName: "batman", messageText: "How's your life with the Godzilla", isCurrentUser: true),
                                   .init(id: 3, imageName: "spiderman", messageText: "superfun", isCurrentUser: false),
                                   .init(id: 4, imageName: "spiderman", messageText: "Have you had an accident last summer..I heard from the Joker", isCurrentUser: false),
                                   .init(id: 5, imageName: "batman", messageText: "just rumours", isCurrentUser: true),
                                   .init(id: 6, imageName: "spiderman", messageText: "cool!!", isCurrentUser: false)]
