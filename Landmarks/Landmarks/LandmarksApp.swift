//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김도완 on 10/8/23.
//

import SwiftUI

@main // entry porint
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
