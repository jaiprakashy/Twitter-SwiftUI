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
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                Text("Notification")
                    .tabItem {
                        Image(systemName: "bell")
                    }
                Text("Message")
                    .tabItem {
                        Image(systemName: "envelope")
                    }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
