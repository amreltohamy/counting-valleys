func sockMerchant(n: Int, ar: [Int]) -> Int {
    var array = ar
    var checkedArray = [Int]()
    var numberOfPairs:Int = 0
    
    for item in array {
        if checkedArray.contains(item) {
            print("item checked")
            array.remove(at: item)
        }else{
            numberOfPairs +=  findNumberOfPairs(item: item, array: array)/2
            checkedArray.append(item)
            print(item)
        }
     
    }
   
    
    return numberOfPairs
}
func findNumberOfPairs(item:Int,array:[Int])->Int{
    var counter = 0
    for arrayItems in array {
        if item == arrayItems {
            counter += 1
        }
    }
    return counter
}
sockMerchant(n: 7, ar: [1,2,1,2,1,3,2])
