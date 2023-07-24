//
//  ReplyView.swift
//  Threads
//
//  Created by Skander Blaiti on 24/7/2023.
//

import SwiftUI

struct ReplyView: View {
    var post: Post
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            VStack{

                AsyncImage(
                    url: URL(string: post.user.picture),
                    content: { image in
                        image
                         .resizable()
                         .aspectRatio(contentMode: .fill)
                         .frame(width: 60, height: 60)
                         .cornerRadius(30)
                    }, placeholder: {
                        Circle()
                            .foregroundColor(Color("Gray").opacity(0.2))
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                    }
                )
                
                Rectangle()
                    .frame(maxWidth: 2, maxHeight: .infinity)
                    .foregroundColor(Color("Gray").opacity(0.3))
                
                HStack(alignment: .bottom) {
                    Circle()
                        .foregroundColor(Color("Gray").opacity(0.3))
                        .frame(maxWidth: 15, maxHeight: 15)
                    Circle()
                        .foregroundColor(Color("Gray").opacity(0.3))
                        .frame(maxWidth: 30, maxHeight: 30)
                }
                Circle()
                    .frame(maxWidth: 10, maxHeight: 10)
                    .foregroundColor(Color("Gray").opacity(0.3))
            }
            
            
//            Post details
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(post.user.full_name)
                        .customFont(.title3)
                    Spacer()
                    Text(post.time)
                        .customFont(.body)
                    Image(systemName: "ellipsis")
                        .customFont(.title3)
                }
                .foregroundColor(Color("Text"))
                
                Text("Replying to @mark.zuckerberg")
                    .customFont(.caption)
                    .foregroundColor(Color("Text"))
                    .padding(10)
                
                Text(post.text)
                    .customFont(.caption)
                    .foregroundColor(Color("Text"))
                
                HStack(spacing: 10) {
                    Image(systemName: "heart")
                    Image(systemName: "text.bubble")
                    Image(systemName: "repeat")
                    Image(systemName: "paperplane")
                }
                .padding(.top)
                .customFont(.title2)
                .foregroundColor(Color("Text"))
                
                Text("\(post.comments_count) replies . \(post.likes_count) likes")
                    .customFont(.footnote)
                    .foregroundColor(Color("Gray"))
            }
            .frame(width: .infinity)
        }
        .frame(width: .infinity)
        .background(Color("Primary"))
    }
}

struct ReplyView_Previews: PreviewProvider {
    static var previews: some View {
        ReplyView(post: PostList.Posts[1])
    }
}
