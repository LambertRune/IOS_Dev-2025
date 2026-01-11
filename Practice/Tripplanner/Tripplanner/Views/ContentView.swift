//
//  ContentView.swift
//  Tripplanner
//
//  Created by rune on 10/01/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            Tab("Departure", systemImage: "airplane.departure") {
                    DepartureView()
                }
            Tab("Info", systemImage: "info.bubble.rtl") {
                    InfoView()
                }
        }
    }
}

#Preview {
    ContentView()
}
