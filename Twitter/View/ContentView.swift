//
//  ContentView.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                Text("Notification")
                    .tabItem {
                        Image(systemName: "bell")
                    }
                ConversationsView()
                    .tabItem {
                        Image(systemName: "envelope")
                    }
            }
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
