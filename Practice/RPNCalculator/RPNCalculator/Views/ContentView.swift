//
//  ContentView.swift
//  RPNCalculator
//
//  Created by rune on 11/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State var calcEngine = CalcEngine()
    var body: some View {
        VStack{
            HStack{
                TextEditor(text: .constant(calcEngine.result)).padding(2).frame(width: 100, height: 150).border(Color.black)
                                   
                Grid{
                    GridRow{
                        ForEach(7..<10) { number in
                            Button("\(number)") {
                                calcEngine.addNumber(number: number)
                            }
                        
                        }
                        Button("/"){
                            calcEngine.divide()
                        }

                    }
                    GridRow{
                        ForEach(4..<7) { number in
                            Button("\(number)") {
                                calcEngine.addNumber(number: number)
                            }
                        
                        }
                        Button("*"){
                            calcEngine.product()
                        }

                    }
                    GridRow{
                        ForEach(1..<4) { number in
                            Button("\(number)") {
                                calcEngine.addNumber(number: number)
                            }
                        
                        }
                        Button("-"){
                            CalcEngine().min()
                        }

                    }
                    
                    GridRow{
                        
                        Button("0"){
                            calcEngine.addNumber(number: 0)
                        }
                        Button("+"){
                            calcEngine.add()
                        }

                    }
                    GridRow{
                        
                        Button("Clear"){
                            calcEngine.clear()
                        }
                        Button("Enter"){
                            calcEngine.enter()
                        }

                    }
                }
            }
        }
        Button("Show stack"){
            calcEngine.showStack()
        }
        
    }
}

#Preview {
    ContentView()
}
