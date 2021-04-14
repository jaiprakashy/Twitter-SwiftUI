//
//  NewTweetView.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 12/04/21.
//

import SwiftUI
import Kingfisher

struct NewTweetView: View {
    @Binding var isPresented: Bool
    @State var captionText: String = ""
    @ObservedObject var viewModel: UploadTweetViewModel
    
    init(isPresented: Binding<Bool>) {
        self._isPresented = isPresented
        self.viewModel = UploadTweetViewModel(isPresented: isPresented)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top) {
                    if let user = AuthViewModel.shared.user {
                        KFImage(URL(string: user.profileImageUrl))
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                    }
                    
                    TextArea("What's happening", text: $captionText)
//                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                .padding()
                .navigationBarItems(leading: Button(action: {
                    self.isPresented.toggle()
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.blue)
                }), trailing: Button(action: {
                    viewModel.uploadTweet(caption: captionText)
                }, label: {
                    Text("Tweet")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }))
                Spacer()
            }
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView(isPresented: .constant(false))
    }
}
