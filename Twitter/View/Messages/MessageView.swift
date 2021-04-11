//
//  MessageView.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI

struct MessageView: View {
    let message: MockMessage
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isFromCurrentUser: message.isCurrentUser))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image("batman")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(ChatBubble(isFromCurrentUser: message.isCurrentUser))
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: mockMessages[0])
    }
}
