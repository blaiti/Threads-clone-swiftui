//
//  RootView.swift
//  Threads
//
//  Created by Skander Blaiti on 9/7/2023.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab: Tabs = .home
    
    init() {
        UITableView.appearance().isHidden = true
    }
    
    var body: some View {
        VStack{
            ZStack{
                switch selectedTab {
                case .home:
                    HomeView()
                case .search:
                    SearchView()
                case .add_post:
                    NewPostView()
                case .notifications:
                    NotificationsView()
                case .profile:
                    ProfileView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBarView(selectedTab: $selectedTab)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
