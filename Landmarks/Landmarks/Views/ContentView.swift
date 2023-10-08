//
//  ContentView.swift
//  Landmarks
//
//  Created by 김도완 on 10/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
