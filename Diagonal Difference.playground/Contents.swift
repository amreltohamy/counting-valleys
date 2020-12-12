func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var forwardDiagonal = 0
    var backwordDiagonal = 0
    for index in 0 ... arr.count-1 {
        forwardDiagonal += arr[index][index]
        backwordDiagonal += arr[index][arr.count-1-index]
    }
return abs(forwardDiagonal - backwordDiagonal)
}

diagonalDifference(arr: [[1,2,3],
[1,2,3],
[1,2,3]])
