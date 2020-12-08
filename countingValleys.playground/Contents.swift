import Cocoa

func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here

    var ups = 0
    var downs = 0
    var vallyCounter = 0
    for item in path {
        
        if item == "D"{
            downs += 1
        }else if item == "U"{
            ups += 1
        }else {
            print("unexpected input")
        }
        
        if ups == downs  && item == "U"{
            print("sea level add one vally \(vallyCounter+1)")
            print("ups:\(ups) downs:\(downs)")
            ups = 0
            downs = 0
            vallyCounter += 1
        }else if ups == downs {
            print("sea level")
            print("ups:\(ups) downs:\(downs)")
            ups = 0
            downs = 0
        }
    }
    return vallyCounter
}
var string = "UUDDDDDUUUUUDDDDDUUDDUUUUUDDDDUUDDUU"
countingValleys(steps: 26, path: string)


countingValleys(steps: 8, path: string)  //Expected: 1
countingValleys(steps: 12, path: "DDUUDDUDUUUD") //Expected : 2
