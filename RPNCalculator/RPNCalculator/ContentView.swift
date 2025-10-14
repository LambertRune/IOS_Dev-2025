//
//  ContentView.swift
//  RPNCalculator
//
//  Created by Rune Lambert on 08/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State var calculatorEngine = CalculatorEngine()
    
    var body: some View {
        CalculatorView(calculatorEngine: $calculatorEngine)
    }
}


