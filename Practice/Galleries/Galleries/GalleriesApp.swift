//
//  GalleriesApp.swift
//  Galleries
//
//  Created by rune on 15/01/2026.
//

import SwiftUI

@main
struct GalleriesApp: App {
    @State private var store = GalleriesDataStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(store)
        }
    }
}
