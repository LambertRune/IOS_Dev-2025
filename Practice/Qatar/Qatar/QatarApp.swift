//
//  QatarApp.swift
//  Qatar
//
//  Created by rune on 13/01/2026.
//

import SwiftUI

@main
struct QatarApp: App {
    @State private var wkResultsDataStore = WKResultsDataStore(results: [])
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(wkResultsDataStore)
        }
    }
}
