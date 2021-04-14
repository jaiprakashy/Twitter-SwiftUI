//
//  FeedViewModel.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 14/04/21.
//

import SwiftUI
import Firebase

class FeedViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        COLLECTION_TWEETS.getDocuments { (snapshot, _) in
            guard let documents = snapshot?.documents else { return }
            
            self.tweets = documents.map({ Tweet(dictionary: $0.data()) })
        }
    }
}
