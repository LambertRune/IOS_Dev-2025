//
//  ContentView.swift
//  Galleries
//
//  Created by Rune Lambert on 10/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Galleries", systemImage: "tray.and.arrow.down.fill") {
                ListOfGalleries()
            }
            .badge(2)


            Tab("No gallery", systemImage: "tray.and.arrow.up.fill") {
                GalleryDetails()
            }
        }
    }
}

