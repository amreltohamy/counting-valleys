import Cocoa

func countingValley(steps: Int, path: String) -> Int {
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
countingValley(steps: 26, path: string)


func countingValleys(n: Int, s: String) -> Int {
    var valley = 0
    var countU = 0
    var reachGround = true
    for step in s{
        
        if(step == "U"){
            countU  = countU + 1
            
        }else{
            countU = countU - 1
        }
      
        if(countU < 0 && reachGround){
            valley = valley+1
            reachGround = false
        }
        if(countU == 0){
            reachGround = true
        }
        
    }
    return valley
    }
countingValleys(n: 8, s: string)  //Expected: 1
countingValleys(n: 12, s: "DDUUDDUDUUUD") //Expected : 2
