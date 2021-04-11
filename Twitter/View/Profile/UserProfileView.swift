//
//  UserProfileView.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var selectedFilter: TweetFilterOption = .tweets
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
            }
            
            .navigationBarTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
