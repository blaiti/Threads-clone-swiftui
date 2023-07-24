//
//  HomeView.swift
//  Threads
//
//  Created by Skander Blaiti on 9/7/2023.
//

import SwiftUI

struct HomeView: View {
    var posts: [Post] = PostList.Posts
    
    @Environment(\.colorScheme) var colorScheme
    var logo: String {
        switch colorScheme {
        case .dark:
            return "logo-white"
        case .light:
            return "logo-black"
        @unknown default:
            return "logo-black"
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 20) {
                Image(logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                VStack(spacing: 20) {
                    ForEach(posts, id: \.id) {post in
                        PostView(post: post)
                    }
                }
            }
            .padding()
            .background(Color("Primary"))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        })
        .padding(.top, 1)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
