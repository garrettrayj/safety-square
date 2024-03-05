//
//  SafetySquareApp.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

@main
struct SafetySquareApp: App {
    var body: some Scene {
        #if os(macOS)
        Window(Text("Safety Square"), id: "main") {
            ContentView().frame(minWidth: 300, minHeight: 480)
        }
        .defaultSize(width: 400, height: 600)
        #else
        WindowGroup {
            ContentView()
        }
        #endif
    }
}
