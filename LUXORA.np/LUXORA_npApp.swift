//
//  LUXORA_npApp.swift
//  LUXORA.np
//
//  Created by Aryan Karki on 17/05/23.
//

import SwiftUI

@main
struct LUXORA_npApp: App {
    @StateObject private var cartManager = CartManager()
    @State private var showContentView = false

    var body: some Scene {
        WindowGroup {
            if showContentView {
                ContentView()
                    .environmentObject(cartManager)
                    .navigationViewStyle(StackNavigationViewStyle()) // Apply the navigation view style here
            } else {
                MatchedView(showContentView: $showContentView)
                    .navigationBarHidden(true) // Hide the navigation bar in MatchedView
            }
        }
    }
}

