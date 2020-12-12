import Cocoa

func staircase(n: Int) -> Void {
    var hash = ""
    for _ in 0 ... n-1 {
        hash+=" "
    }
    for _ in 0 ... n-1 {
        hash.removeFirst()
        hash+="#"
        print(hash)
    }

}
