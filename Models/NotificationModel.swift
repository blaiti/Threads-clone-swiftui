//
//  NotificationModel.swift
//  Threads
//
//  Created by Skander Blaiti on 24/7/2023.
//

import SwiftUI

struct Notification: Identifiable {
    let id = UUID()
    let user: User
}

struct NotificationList {
    static let Notifications = [
        Notification(
            user: User(
                username: "john.doe",
                full_name: "John Doe",
                followers_count: 3985,
                picture: "https://ntrepidcorp.com/wp-content/uploads/2016/06/team-1-400x400.jpg"
            )
        ),
        Notification(
            user: User(
                username: "xenathepuppy",
                full_name: "Eula D Velez",
                followers_count: 3985,
                picture: "https://www.fakepersongenerator.com/Face/female/female20171026197276032.jpg"
            )
        ),
        Notification(
            user: User(
                username: "melvina",
                full_name: "Elmer M Gass",
                followers_count: 2464,
                picture: "https://www.fakepersongenerator.com/Face/male/male1085461240021.jpg"
            )
        ),
        Notification(
            user: User(
                username: "itzel",
                full_name: "Laura M McGinnis",
                followers_count: 10234,
                picture: "https://www.fakepersongenerator.com/Face/female/female20151024223707092.jpg"
            )
        ),
    ]
}
