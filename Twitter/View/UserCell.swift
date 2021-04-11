//
//  UserCell.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
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
                Text("Eddie Brock sdfs abdgfasghbdf gsjf sbdfgajkgfsa gdfkgska fas")
                    .font(.system(size: 14))
            }
            .foregroundColor(.black)
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
