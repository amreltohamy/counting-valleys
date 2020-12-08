func remove_char(str1:String,n:Int)->String{
    let count = str1.count
    var newWord = str1
    let index = str1.index(str1.startIndex, offsetBy: n)
    if count>0 {
        newWord.remove(at: index)
    }
    return newWord
}
func change(_ str:String)->String{
    if str.count <= 1 {
        return str
    }
    var newWord = str
    let first = newWord.removeFirst()
    let last = newWord.removeLast()
    newWord.append(first)
    newWord.insert(last, at: newWord.startIndex)
 
    return newWord
}
change("a")
remove_char(str1: "Amr salah", n: 5)


func front_back_add2(str1: String) -> String {
    let newInput = str1
    let first_two = String(newInput.prefix(2))
    return first_two + str1 + first_two
}

print(front_back_add2(str1: "swift"))
print(front_back_add2(str1: "abc"))
print(front_back_add2(str1: "ab"))
print(front_back_add2(str1: "a"))


func testtriples(_ input:[Int])->Bool{
    for (index,number) in input.enumerated() {
        let thirdIndex = index+2
        let secondIndex = index+1
        if secondIndex<input.endIndex && number == input[secondIndex] && number == input[thirdIndex]{
            return true
        }
        
    }
    return false
}
var x:Int = 14
x.isPrime()
testtriples([1,2,3,1,3])

extension Int {
    func isPrime() -> Bool {
        if self > 1 {
                    if self == 2 {
                       return true
                    } else {
                        for i in 2...(self*self) {
                            if self % i == 0 {
                                print( "Composite, divisible by \(i)!")
                                return false
                            }else{
                                return true
                            }
                        }
                    }
                } else {
                    print("Neither prime, nor composite.")
                    return false
                }
               return false
    }
}
