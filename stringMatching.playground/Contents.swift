func stringAnagram(dictionary: [String], query: [String]) -> [Int] {
    var resultArray = [Int]()
    var count = 0
    for queryItem in query {
        for dictItem in dictionary {
            if queryItem.count == dictItem.count {
                if checkForAnagram(query: queryItem, string: dictItem) {
                    count+=1
                }
            }
        }
        resultArray.append(count)
        count = 0
    }
    return resultArray
}


func checkForAnagram(query:String,string:String)->Bool{
    var matching:Bool = true
    for i in query {
       
        if !string.contains(i){
            print("\(i) not matcing in \(string)")
            matching = false
        }else{
            print("\(i) matcing in \(string)")
        }
    }
    return matching
}
stringAnagram(dictionary: ["amr","azab","x","x","a","ola",""], query: ["rma","a","x","z","zaab","loa",""])
