//
//  ProfileDetailsView.swift
//  Threads
//
//  Created by Skander Blaiti on 24/7/2023.
//

import SwiftUI

struct ProfileDetailsView: View {
    var user: User
    var showCount: Bool
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 5) {
                Text(user.full_name)
                    .customFont(.title)
                Text(user.username)
                    .customFont(.title3)
                
                if (showCount == true) {
                    Text("\(String(user.followers_count)) followers")
                        .customFont(.title2)
                        .foregroundColor(Color("Gray"))
                        .padding(.top, 10)
                }
            }
            .foregroundColor(Color("Text"))
            
            Spacer()
            
            AsyncImage(
                url: URL(string: user.picture),
                content: { image in
                    image
                     .resizable()
                     .aspectRatio(contentMode: .fill)
                     .frame(width: 100, height: 100)
                     .cornerRadius(50)
                }, placeholder: {
                    Circle()
                        .foregroundColor(Color("Gray").opacity(0.2))
                        .frame(width: 100, height: 100)
                        .cornerRadius(50)
                }
            )
        }
        .background(Color("Primary"))
    }
}

struct ProfileDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailsView(user: UserList.Users[0], showCount: true)
    }
}
