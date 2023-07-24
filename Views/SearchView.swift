//
//  SearchView.swift
//  Threads
//
//  Created by Skander Blaiti on 9/7/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    var searchResults: [User] {
        if searchText.isEmpty {
            return UserList.Users
        } else {
            return UserList.Users.filter{ $0.full_name.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id: \.id) { user in
                    AccountView(user: user)
                }
            }
            .listStyle(.plain)
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
