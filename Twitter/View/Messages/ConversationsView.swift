//
//  ConversationsView.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView: Bool = false
    @State var showChat: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {})
            
            ScrollView {
                VStack {
                    ForEach(0 ..< 29) { (_) in
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConversationCell()
                            })
                    }
                }
            }
            
            Button(action: {
                self.isShowingNewMessageView.toggle()
            }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView, content: {
                NewMessageView(show: $isShowingNewMessageView, startChat: $showChat)
            })
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
