//
//  TabBarView.swift
//  Threads
//
//  Created by Skander Blaiti on 9/7/2023.
//

import SwiftUI

enum Tabs: String {
    case home = "house"
    case search = "magnifyingglass"
    case add_post = "square.and.pencil"
    case notifications = "heart"
    case profile = "person"
}

struct TabBarButton: View {
    @Binding var selectedTab: Tabs
    @Binding var currentTab: Tabs
    
    var filled: String {
        switch selectedTab {
        case .home, .notifications, .profile:
            return ".fill"
        default:
            return ""
        }
    }
    
    var body: some View {
        GeometryReader{geo in
            Button {
                selectedTab = currentTab
            } label: {
                Image(systemName: selectedTab == currentTab ? currentTab.rawValue + filled : currentTab.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
            .tint(selectedTab == currentTab ? Color("Text") : Color("Gray"))
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct TabBarView: View {
    @Binding var selectedTab: Tabs
    @State var TabButtons : [Tabs] = [Tabs.home, Tabs.search, Tabs.add_post, Tabs.notifications, Tabs.profile]
    
    var body: some View {
        HStack (spacing: 0) {
            ForEach($TabButtons, id: \.self) {tab in
                TabBarButton(selectedTab: $selectedTab, currentTab: tab)
            }
        }
        .padding()
        .background(Color("Primary"))
        .frame(maxWidth: .infinity, maxHeight: 50)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(.home))
    }
}
