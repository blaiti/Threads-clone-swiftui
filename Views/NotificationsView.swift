//
//  NorificationsView.swift
//  Threads
//
//  Created by Skander Blaiti on 9/7/2023.
//

import SwiftUI

struct NotificationsView: View {
    private var notifications: [Notification] = NotificationList.Notifications
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false, content: {
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(spacing: 10) {
                        Button(action: {}) {
                            Text("All")
                        }
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .customFont(.headline)
                        .background(Color("Text"))
                        .foregroundColor(Color("Primary"))
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
                        
                        Button(action: {}) {
                            Text("Replies")
                        }
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .customFont(.headline)
                        .background(Color("Primary"))
                        .foregroundColor(Color("Text"))
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
                        
                        Button(action: {}) {
                            Text("Mentions")
                        }
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .customFont(.headline)
                        .background(Color("Primary"))
                        .foregroundColor(Color("Text"))
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
                    }
                    .padding(20)
                })
                VStack(spacing: 20) {
                    ForEach(notifications, id: \.id) { notification in
                        NotificationView(notification: notification)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
            })
            .padding(.top, 1)
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
