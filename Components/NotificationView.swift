//
//  NotificationView.swift
//  Threads
//
//  Created by Skander Blaiti on 24/7/2023.
//

import SwiftUI

struct NotificationView: View {
    var notification: Notification
    
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: notification.user.picture),
                content: { image in
                    image
                     .resizable()
                     .aspectRatio(contentMode: .fill)
                     .frame(width: 70, height: 70)
                     .cornerRadius(35)
                }, placeholder: {
                    Circle()
                        .foregroundColor(Color("Gray").opacity(0.2))
                        .frame(width: 70, height: 70)
                        .cornerRadius(35)
                }
            )
            
            VStack(alignment: .leading, spacing: 5) {
                Text(notification.user.username)
                    .customFont(.title3)
                Text(notification.user.full_name)
                    .customFont(.headline)
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Confirm")
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .customFont(.headline)
            .background(Color("Primary"))
            .foregroundColor(Color("Text"))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
            
            Button(action: {}) {
                Text("Hide")
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .customFont(.headline)
            .background(Color("Primary"))
            .foregroundColor(Color("Text"))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(notification: NotificationList.Notifications[1])
    }
}
