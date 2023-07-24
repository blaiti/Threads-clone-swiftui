//
//  AccountView.swift
//  Threads
//
//  Created by Skander Blaiti on 17/7/2023.
//

import SwiftUI

struct AccountView: View {
    var user: User
    @State private var followed: Bool = false
    
    var body: some View {
        HStack (alignment: .top) {
            AsyncImage(
                url: URL(string: user.picture),
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
                Text(user.username)
                    .customFont(.title3)
                Text(user.full_name)
                    .customFont(.headline)
                Text("\(String(user.followers_count)) followers")
                    .customFont(.subheadline)
            }
            
            Spacer()
            
            Button(action: {
                followed = !followed
            }) {
                Text(followed == false ? "Follow" : "Unfollow")
            }
            .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
            .customFont(.headline)
            .background(Color(followed == false ? "Primary" : "Text"))
            .foregroundColor(Color(followed == false ? "Text" : "Primary"))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke().fill(Color("Text").opacity(0.5)))
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(user: UserList.Users[0])
    }
}
