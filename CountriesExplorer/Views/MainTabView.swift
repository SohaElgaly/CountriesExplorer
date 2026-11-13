//
//  MainTabView.swift
//  CountriesExplorer
//
//  Created by Soha Elgaly on 13/11/2026.
//

import SwiftUI

struct MainTabView: View {
    private enum Tab: Hashable {
        case home,favorites
    }
    @State private var selectedTab: Tab = .home
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationStack {
                Home()
            }
            .tabItem {Label("Home", systemImage: "house")}
            .tag(Tab.home)
            
            NavigationStack {
                Favorites()
            }
            .tabItem {
                Label("Favorites", systemImage: "heart")
            }
            .tag(Tab.favorites)
        }
        .tint(Color.cyan)
    }
}

#Preview {
    MainTabView()
}
