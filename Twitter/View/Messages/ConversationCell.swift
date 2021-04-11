//
//  ConversationCell.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image("venom-10")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Venom")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Eddie Brock sdfs abdgfasghbdf gsjf sbdfgajkgfsa gdfkgska fasBrock sdfs abdgfasghbdf gsjf sbdfgajkgfsa gdfkgska fas")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                .foregroundColor(.black)
                .frame(height: 64)
                .padding(.trailing)
            }
            
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
