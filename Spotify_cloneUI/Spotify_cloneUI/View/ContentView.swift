//
//  ContentView.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    
    enum Tab{
        case home
        case search
    }
    
    var body: some View {
        TabView(selection: $selection){
            HomepageView()
                .preferredColorScheme(.dark)
                .tabItem {
                    Label("홈", systemImage: "house")
                }
                .tag(Tab.home)
            CategoryView()
                .preferredColorScheme(.dark)
                .tabItem {
                    Label("검색하기", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
