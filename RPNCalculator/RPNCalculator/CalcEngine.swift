//
//  CalcEngine.swift
//  RPNCalculator
//
//  Created by Rune Lambert on 08/10/2025.
//

import Foundation

@Observable
class CalculatorEngine {
    var stack: [String?] = []
    
    func showStack() -> [String?] {
        return stack
    }
    
    func addNumberToStack(number: String){
        stack.append(number)
    }
    
    
}
