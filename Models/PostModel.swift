//
//  PostModel.swift
//  Threads
//
//  Created by Skander Blaiti on 10/7/2023.
//

import SwiftUI

struct Post: Identifiable {
    let id = UUID()
    let user: User
    let text: String
    let image: String
    let time: String
    let likes_count: Int
    let comments_count: Int
}

struct PostList {
    static let Posts = [
        Post(
            user: User(
                username: "skander.blaiti",
                full_name: "Skander Blaiti",
                followers_count: 243,
                picture: "https://pbs.twimg.com/profile_images/1666532316242407427/BSlZG_mn_400x400.jpg"
            ),
            text: "Dashlytics is a minimalist and user-friendly dashboard for appointments management and statistics tracking.",
            image: "https://pbs.twimg.com/media/Fw4hxryWcAM7QvY?format=jpg",
            time: "1 h",
            likes_count: 529,
            comments_count: 98
        ),
        Post(
            user: User(
                username: "skander.blaiti",
                full_name: "Skander Blaiti",
                followers_count: 243,
                picture: "https://pbs.twimg.com/profile_images/1666532316242407427/BSlZG_mn_400x400.jpg"
            ),
            text: "This is the latest mobile app I have created using React Native & SQLite.",
            image: "https://pbs.twimg.com/media/FlyqM9bXoAILc78?format=jpg",
            time: "2 h",
            likes_count: 1936,
            comments_count: 146
        )
    ]
}
