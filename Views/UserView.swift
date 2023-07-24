//
//  UserView.swift
//  Threads
//
//  Created by Skander Blaiti on 24/7/2023.
//

import SwiftUI

struct UserView: View {
    @State var tabIndex: Int = 0
    @State private var followed: Bool = false
    private let user = UserList.Users[1]
    private var posts: [Post] = PostList.Posts
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                VStack (alignment: .leading, spacing: 30) {
                    HStack {
                        Image(systemName: "arrow.left")
                            .customFont(.title)
                        Spacer()
                        Image(systemName: "ellipsis.circle")
                            .customFont(.title)
                    }
                    .foregroundColor(Color("Text"))
                    
                    ProfileDetailsView(user: user, showCount: false)
                        
                    Button(action: {
                        followed = !followed
                    }) {
                        Text(followed == false ? "Follow" : "Unfollow")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                    .customFont(.headline)
                    .background(Color(followed == false ? "Text" : "Primary"))
                    .foregroundColor(Color(followed == false ? "Primary" : "Text"))
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
                }
                .padding(20)
                
                HStack(spacing: 0) {
                    TabBarButtonView(text: "Threads", isSelected: .constant(tabIndex == 0))
                        .onTapGesture { onButtonTapped(index: 0) }
                    TabBarButtonView(text: "Replies", isSelected: .constant(tabIndex == 1))
                        .onTapGesture { onButtonTapped(index: 1) }
                }
                
                VStack(spacing: 20) {
                    if (tabIndex == 0) {
                        ForEach(posts, id: \.id) {post in
                            PostView(post: post)
                        }
                    }
                    else {
                        ForEach(posts, id: \.id) {post in
                            ReplyView(post: post)
                        }
                    }
                }
                .padding(20)
            }
        })
    }
    
    private func onButtonTapped(index: Int) {
        tabIndex = index
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
