//
//  ProfileHeaderView.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    let viewModel: ProfileViewModel
    @Binding var isFollowed: Bool
    var body: some View {
        VStack {
            KFImage(URL(string: viewModel.user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6, x: 0.0, y: 0.0)
            
            Text(viewModel.user.fullname)
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@\(viewModel.user.username)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Billionaire by day, batman by night")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack(spacing: 40) {
                VStack {
                    Text("12")
                        .font(.system(size: 16))
                        .bold()
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                VStack {
                    Text("126")
                        .font(.system(size: 16))
                        .bold()
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ProfileActionButtonView(viewModel: viewModel, isFollowed: $isFollowed)
            
            Spacer()
        }
    }
}

//struct ProfileHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHeaderView()
//    }
//}
