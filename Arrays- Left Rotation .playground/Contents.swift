import Cocoa
func rotLeft(a: [Int], d: Int) -> [Int] {
    var array = a
    if a.count == 0 || a.count == 1 || a.count == d{
            return a }
    for _ in 0 ... (d%a.count)-1 {
        let temp = array.first
        array.removeFirst()
        array.append(temp!)
        print(array)
    }

return array
}

rotLeft(a: [1,2,3,4,5], d: 5)
