//
//  CalculatorView.swift
//  RPNCalculator
//
//  Created by Rune Lambert on 08/10/2025.
//

import SwiftUI

struct CalculatorView: View {
    @Binding var calculatorEngine: CalculatorEngine
    //@Binding var stack: Binding<String>
    var body: some View {
        VStack {
            //TextEditor(text: stack)
            
            Grid {
                GridRow(){
                    ForEach(7..<10) { number in
                        Button(""){
                            calculatorEngine.addNumberToStack(number: String(number))
                        }
                    }
                }
            }
        }
    }
}
