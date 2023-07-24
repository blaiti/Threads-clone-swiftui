//
//  TabBarView.swift
//  Threads
//
//  Created by Skander Blaiti on 9/7/2023.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case search = 1
    case add_post = 2
    case notifications = 3
    case profile = 4
}

struct TabBarView: View {
    @Binding var selectedTab: Tabs
    var body: some View {
        TabView {
            HStack (alignment: .center) {
                GeometryReader{geo in
                    Button {
                        selectedTab = .home
                    } label: {
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "house")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                    }
                    .tint(selectedTab == .home ? .black : .gray)
                    .frame(width: geo.size.width, height: geo.size.height)
                }
                GeometryReader{geo in
                    Button {
                        selectedTab = .search
                    } label: {
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                    }
                    .tint(selectedTab == .search ? .black : .gray)
                    .frame(width: geo.size.width, height: geo.size.height)
                }
                
                GeometryReader{geo in
                    Button {
                        selectedTab = .add_post
                    } label: {
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                    }
                    .tint(selectedTab == .add_post ? .black : .gray)
                    .frame(width: geo.size.width, height: geo.size.height)
                }
                
                GeometryReader{geo in
                    Button {
                        selectedTab = .notifications
                    } label: {
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                    }
                    .tint(selectedTab == .notifications ? .black : .gray)
                    .frame(width: geo.size.width, height: geo.size.height)
                }
                
                GeometryReader{geo in
                    Button {
                        selectedTab = .profile
                    } label: {
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        }
                    }
                    .tint(selectedTab == .profile ? .black : .gray)
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .padding(20)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(.home))
    }
}
