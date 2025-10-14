//
//  CalculatorView.swift
//  RPNCalculator
//
//  Created by Rune Lambert on 08/10/2025.
//

import SwiftUI

struct CalculatorView: View {
    @Binding var calculatorEngine: CalculatorEngine
    var body: some View {
        HStack {
            VStack{
                TextEditor(text: .constant(calculatorEngine.result.reversed().joined(separator: "\n")))
                    .disabled(true)
                    .frame(width: 150, height: 300)
                    .border(Color.black)
                Button("Show stack"){
                    calculatorEngine.showStack()
                }
            }
            
            
            Grid {
                GridRow(){
                    ForEach(7..<10) { number in
                        Button("\(number)"){
                            calculatorEngine.addNumberToStack(number: String(number))
                        }
                    }
                    Button("/"){
                        calculatorEngine.divide()
                    }
                }
                GridRow(){
                    ForEach(4..<7) { number in
                        Button("\(number)"){
                            calculatorEngine.addNumberToStack(number: String(number))
                        }
                    }
                    Button("X"){
                        calculatorEngine.multiply()
                    }
                }
                GridRow(){
                    ForEach(1..<4) { number in
                        Button("\(number)"){
                            calculatorEngine.addNumberToStack(number: String(number))
                        }
                    }
                    Button("-"){
                        calculatorEngine.minus()
                    }
                }
                GridRow(){
                    Button("0"){
                        calculatorEngine.addNumberToStack(number: "0")
                    }
                    Button("+"){
                        calculatorEngine.sum()
                    }
                }
                GridRow(){
                    Button("Clear"){
                        calculatorEngine.clear()
                    }
                    Button("Enter"){
                        calculatorEngine.enter()
                    }
                }
            }
        }
    }
}
