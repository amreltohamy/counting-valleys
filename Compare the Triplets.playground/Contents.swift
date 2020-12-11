import Cocoa

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    
  var result = [0,0]

    if a.count != 3 && b.count != 3 {return result}
    for index in 0 ... 2 {
        if a[index] > b [index] {
            result[0]+=1
        }else if a[index] < b [index] {
            result[1]+=1
        }
    }
    return result
}


compareTriplets(a: [1,2,5], b: [1,3,2])


