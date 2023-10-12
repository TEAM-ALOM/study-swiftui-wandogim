//
//  ContentView.swift
//  Landmarks
//
//  Created by 김도완 on 10/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab{
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("Featured", systemImage: "list.bullet")
                }
                .tag(Tab.list)
                
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
