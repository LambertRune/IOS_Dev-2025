//
//  CalcEngine.swift
//  RPNCalculator
//
//  Created by Rune Lambert on 08/10/2025.
//

import Foundation

@Observable
class CalculatorEngine {
    var stack: [String] = []
    var result: [String] = []
    
    var inputField: String = ""
    
    
    
    func showStack() -> Void {
        if(result.last == "\n" ){
            result.removeLast()
        }
        let joined = stack.joined(separator: ",")
            result.append("[\(joined)]")
    }
    func addNumberToStack(number: String){
        inputField.append(number)

            if result.isEmpty || result.last?.starts(with: "[") == true {
                result.append(inputField)
            }
            else if(result.last == "\n" ){
                result.removeLast()
                result.append(inputField)
            }
            else {
                result[result.count - 1] = inputField
            }
    }
    
    func enter(){
        stack.append(inputField)
        result.append("\n")
        inputField = ""
    }
    
    func clear(){
        stack.removeAll()
        result.removeAll()
        inputField = ""
    }
    
    func isStackValid() -> Bool{
        if(stack.count >= 2){
            return true
        }
        result.append("Not enough operants.")
        return false
    }
    
    func getLastTwoOperators() -> (firstOperator: Double,secondOperator: Double){
        print(stack.last!)
        let firstOperator = Double(stack.popLast()!)
        let secondOperator = Double(stack.popLast()!)
        return (firstOperator!,secondOperator!)
    }
    
    func multiply(){
        if(isStackValid()){
            let (firstOperator,secondOperator) = getLastTwoOperators()
            let resultMultiply = firstOperator * secondOperator
            stack.append(String(resultMultiply))
            result.append(String(resultMultiply))
        }
    }
    func divide(){
        if(isStackValid()){
            let (firstOperator,secondOperator) = getLastTwoOperators()
            let resultDivide = firstOperator / secondOperator
            stack.append(String(resultDivide))
            result.append(String(resultDivide))
        }
    }
    func sum(){
        if(isStackValid()){
            let (firstOperator,secondOperator) = getLastTwoOperators()
            let resultSum = firstOperator + secondOperator
            stack.append(String(resultSum))
            result.append(String(resultSum))
            
        }
    }
    func minus(){
        if(isStackValid()){
            let (firstOperator,secondOperator) = getLastTwoOperators()
            let resultMinus = firstOperator - secondOperator
            stack.append(String(resultMinus))
            result.append(String(resultMinus))
            
        }
    }
    
    
}
