import UIKit
var text = "SWIFT"
let max :Int = 10
var average: Double = 0

text.forEach{
    print($0)
}
var firstLastname = (voornaam:"rune", achternaam:"lambert")

print(firstLastname.voornaam)
print(firstLastname.achternaam)

var reversedString: String? = nil

if reversedString == nil{
    print("no result")
}
else{
    print(reversedString)
}

func reversedString(text:String?) -> String{
    if text == nil{
        return ""
    }
    else{
        return String(text!.reversed())
    }

}


print(reversedString(text: firstLastname.achternaam))


print(reversedString(text: nil))

func getUpperLowerCount(text:String)->( uppercase:String,lowercase:String,charCount:Int){
    let upperCase = text.uppercased()
    let lowerCase = text.lowercased()
    let charCount = text.count
    return (upperCase,lowerCase,charCount)
}
print(getUpperLowerCount(text: "Ios26"))
print(getUpperLowerCount(text: "Ios26").lowercase)
print(getUpperLowerCount(text: "Ios26").uppercase)
print(getUpperLowerCount(text: "Ios26").charCount)


func resultaatVanDeling(getal:Int, deler: Int) -> Double{
    return Double(getal)/Double(deler)
}

print(resultaatVanDeling(getal: 4, deler: 5))
print(resultaatVanDeling(getal: 4, deler: 0))

func calculate(numbers:Int...)->(max:Int,min:Int, avg:Double,count:Int){
    let min: Int = numbers.min()!
    let max: Int = numbers.max()!
    let count: Int = numbers.count
    let sum: Int = numbers.reduce(0,+)
    let avg: Double = Double(sum/count)
    return (min,max,avg,count)
}


print(calculate(numbers:10,0,5))
print(calculate(numbers:4,5,6,-3))
print(calculate(numbers:-3))
print(calculate())
func getUpperLowerCountErrorHandling(text:String)->( uppercase:String,lowercase:String,charCount:Int){
    let upperCase = text.uppercased()
    let lowerCase = text.lowercased()
    let charCount = text.count
    return (upperCase,lowerCase,charCount)
}
