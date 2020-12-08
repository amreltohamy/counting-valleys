import Cocoa

func repeatedString(s: String, n: Int) -> Int {
    let newString =  CreateString(sring: s, number: n)
    print(newString)
    return findNumberOfa(totalWord:newString)
}
func CreateString(sring: String, number: Int) -> String {
    
    var index = 0
    var newString = ""
    while index < number/sring.count {
        newString += sring
       index+=1
    }
    let substringIndex = sring.index(sring.startIndex, offsetBy:number%sring.count )
    let newPostCode = String(sring[..<substringIndex])
    return newString+newPostCode
}
func findNumberOfa(totalWord:String)->Int{
    var counter = 0
    for i in totalWord {
        if i == "a"{
            counter+=1
        }
    }
    
    return counter
}
repeatedString(s: "amr", n: 25)

