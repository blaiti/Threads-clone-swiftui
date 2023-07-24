//
//  ProfileView.swift
//  Threads
//
//  Created by Skander Blaiti on 9/7/2023.
//

import SwiftUI

struct ProfileView: View {
    @State var tabIndex: Int = 0
    private let user = UserList.Users[0]
    private var posts: [Post] = PostList.Posts
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                VStack (alignment: .leading, spacing: 30) {
                    HStack {
                        Image(systemName: "network")
                            .customFont(.title)
                        Spacer()
                        Image(systemName: "button.programmable.square")
                            .customFont(.title)
                        Image(systemName: "text.alignright")
                            .customFont(.title)
                    }
                    .foregroundColor(Color("Text"))
                    
                    ProfileDetailsView(user: user, showCount: true)
                    
                    HStack {
                        Button(action: {}) {
                            Text("Edit profile")
                        }
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .customFont(.headline)
                        .background(Color("Primary"))
                        .foregroundColor(Color("Text"))
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
                        
                        
                        
                        Button(action: {}) {
                            Text("Share profile")
                        }
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .customFont(.headline)
                        .background(Color("Primary"))
                        .foregroundColor(Color("Text"))
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
                    }
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
        .padding(.top, 1)
    }
    
    private func onButtonTapped(index: Int) {
        tabIndex = index
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
