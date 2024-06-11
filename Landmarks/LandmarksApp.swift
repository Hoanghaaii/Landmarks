//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by HoangHaaii on 06/06/2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData=ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
