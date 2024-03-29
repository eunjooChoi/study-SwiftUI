//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by chenjoo on 2022/07/18.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
