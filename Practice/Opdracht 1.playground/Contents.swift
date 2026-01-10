import UIKit

var greeting = "Hello, playground"

var variable:String = "SWIFT"

for c in variable{
    print(c)
}

let naam = (voornaam:"rune",achternaam:"lambert")

print(naam.voornaam)
print(naam.achternaam)

var reversedString: String? = "hoi"

if(reversedString == nil){
    print("no result")
}
else{
    print(reversedString!)
}


//deel 2

func reverse(input:String?) -> String{
    if(input == nil){
        return "faultive input!"
    }
    return String(input!.reversed())
}

print(reverse(input: greeting))

print(reverse(input: nil))


func getUpperLowercount(input:String) -> (lowercase:String,uppercase:String,charCount:String){
    let uppercase = String(input.uppercased())
    let lowercase = String(input.lowercased())
    let charCount = String(input.count)
    return (lowercase,uppercase,charCount)
}

let output = getUpperLowercount(input: "test")
print(output.charCount)

func divide(number1:Int,number2:Int) -> Double?{
    if(number2 == 0){
        return nil
    }
    let dividedNumber:Double = Double(number1/number2)
    return dividedNumber
}

print(divide(number1: 32, number2: 0))

//variadic parameter
func calculate(numbers: Int...) -> (avg: Double, min: Int, max: Int, count: Int)? {
    // 1. Controleer of de lijst leeg is
    if numbers.isEmpty {
        return nil
    }
    
    // 2. Bereken de som voor het gemiddelde
    let sum = numbers.reduce(0, +)
    let avg = Double(sum) / Double(numbers.count)
    
    // 3. Haal min/max op (veilig omdat we weten dat de lijst niet leeg is)
    let min = numbers.min()!
    let max = numbers.max()!
    let count = numbers.count
    
    return (avg, min, max, count)
}

print(calculate(numbers:10,0,5))
print(calculate(numbers:4,5,6,-3))
print(calculate(numbers:-3))
print(calculate())


var x:Double = 10.0
var y:Double = 3

func increment(getal1: inout Double,getal2: inout Double){
   getal1 += 1
   getal2 += 1
}

increment(getal1: &x, getal2: &y)

