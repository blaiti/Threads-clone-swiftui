//
//  UserModel.swift
//  Threads
//
//  Created by Skander Blaiti on 10/7/2023.
//

import SwiftUI

struct User {
    let id = UUID()
    let username: String
    let full_name: String
    let followers_count: Int
    let picture: String
}

struct UserList {
    static let Users = [
        User(
            username: "skander.blaiti",
            full_name: "Skander Blaiti",
            followers_count: 243,
            picture: "https://pbs.twimg.com/profile_images/1666532316242407427/BSlZG_mn_400x400.jpg"
        ),
        User(
            username: "john.doe",
            full_name: "John Doe",
            followers_count: 3985,
            picture: "https://ntrepidcorp.com/wp-content/uploads/2016/06/team-1-400x400.jpg"
        ),
        User(
            username: "xenathepuppy",
            full_name: "Eula D Velez",
            followers_count: 3985,
            picture: "https://www.fakepersongenerator.com/Face/female/female20171026197276032.jpg"
        ),
        User(
            username: "melvina",
            full_name: "Elmer M Gass",
            followers_count: 2464,
            picture: "https://www.fakepersongenerator.com/Face/male/male1085461240021.jpg"
        ),
        User(
            username: "itzel",
            full_name: "Laura M McGinnis",
            followers_count: 10234,
            picture: "https://www.fakepersongenerator.com/Face/female/female20151024223707092.jpg"
        ),
        User(
            username: "john.doe",
            full_name: "John Doe",
            followers_count: 3985,
            picture: "https://ntrepidcorp.com/wp-content/uploads/2016/06/team-1-400x400.jpg"
        ),
        User(
            username: "xenathepuppy",
            full_name: "Eula D Velez",
            followers_count: 3985,
            picture: "https://www.fakepersongenerator.com/Face/female/female20171026197276032.jpg"
        ),
    ]
}
