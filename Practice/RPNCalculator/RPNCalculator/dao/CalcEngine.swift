//
//  File.swift
//  RPNCalculator
//
//  Created by rune on 12/01/2026.
//

import Foundation

@Observable
class CalcEngine{
    var result: String = ""
    var stack: [Double] = []
    var numberText:String = ""
    
    func checkIfOneOperants()-> Bool{
        return stack.count >= 1
    }
    func checkIfTwoOperants()-> Bool{
        return stack.count >= 2
    }
    
    func checkIfSecondNumberIsZero() -> Bool{
        return (stack.suffix(2).last != nil)
    }
    
    func add(){
        if(checkIfTwoOperants()){
            let number1 = stack.popLast()!
            let number2 = stack.popLast()!
            let output = number1 + number2
            stack.append(output)
            addOnResult(value: String(output))
            return
        }
        result.append("\n not enough operants...")
        return
    }
    func min(){
        if(checkIfTwoOperants()){
            let number1 = stack.popLast()!
            let number2 = stack.popLast()!
            let output = number1 - number2
            stack.append(output)
            addOnResult(value: String(output))
            return
        }
        result.append("\n not enough operants...")
        return
    }
    func divide(){
        if(checkIfTwoOperants()){
            if(!checkIfSecondNumberIsZero()){
                let number1 = stack.popLast()!
                let number2 = stack.popLast()!
                let output = number1 / number2
                stack.append(output)
                addOnResult(value: String(output))
                return
            }
            result.append("\n cannot divide by zero")
            return
            
        }
        result.append("\n not enough operants...")
        return
    }
    func product(){
        if(checkIfOneOperants()){
            let number1 = stack.popLast()!
            let number2 = stack.popLast()!
            let output = number1 * number2
            stack.append(output)
            addOnResult(value: String(output))
            return
        }
        result.append("\n not enough operants...")
        return
    }
    
    func addNumber(number:Int){
        numberText += String(number)
        addOnResult(value: numberText)
    }
    func clear(){
        result = ""
        stack = []
    }
    func showStack(){
        addOnResult(value: "\(stack)")
    }
    func enter(){
        if(!numberText.isEmpty){
            stack.append(Double(numberText)!)
            numberText = ""
        }
    }
    
    func addOnResult(value:String){
        result.append("\n \(value)")
    }
}
