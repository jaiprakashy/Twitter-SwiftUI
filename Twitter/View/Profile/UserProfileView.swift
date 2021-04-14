//
//  UserProfileView.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var selectedFilter: TweetFilterOption = .tweets
    @ObservedObject var viewModel: ProfileViewModel
    let user: User
    
    init(user: User) {
        self.user = user
        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(viewModel: viewModel, isFollowed: $viewModel.isFollowed)
                    .padding()
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
            }
            
            .navigationBarTitle("batman")
        }
    }
}

//struct UserProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserProfileView()
//    }
//}
