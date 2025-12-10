//
//  ContentView.swift
//  VIVESPLUS
//
//  Created by Rune Lambert on 04/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State var uurroosterDataStore = UurroosterDataStore()
    
    var body: some View{
        UurroosterList()
    }
}

#Preview {
    ContentView()
}
