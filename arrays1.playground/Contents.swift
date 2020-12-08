func stringAnagram(dictionary: [String], query: [String]) -> [Int] {
    // Write your code here
    var array = [Int]()
    for queryItem in query{
        var counter = 0
        for dictItem in dictionary {
            if dictItem.count == queryItem.count {
               var check:Bool = true
               for i in queryItem {
                
                if !dictItem.contains(i){
                     check = false
                   }
               }
                if check {
                    counter += 1
                }
            }
        }
        array.append(counter)
        counter = 0
    }
    return array
}

stringAnagram(dictionary: ["hello", "amr","x","x","azab","zaab"], query: ["x","x","baza","hgegaliufg;iauf;iuagli"])
