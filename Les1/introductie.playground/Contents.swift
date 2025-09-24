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
