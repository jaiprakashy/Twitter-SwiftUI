//
//  SearchView.swift
//  Twitter
//
//  Created by Jaiprakash Yadav on 11/04/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(0 ..< 10) { _ in
                    HStack { Spacer() }
                    NavigationLink(
                        destination: UserProfileView(),
                        label: {
                            UserCell()
                        })
                }
            }
            .padding(.leading)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
