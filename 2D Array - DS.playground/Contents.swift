import Cocoa

func hourglassSum(arr: [[Int]]) -> Int {
    
    var hourGlass = [
        [0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]
    ]
    var maxs = [Int]()
    for i in 0 ... 3 {
        for j in 0 ... 3 {
            if i <= 3 && j <= 3 {
                   //top bars
                   let top = arr[i][j] + arr[i][j+1] + arr[i][j+2]
                let botton = arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
                let middle = arr[i+1][j+1]
                hourGlass[i][j] += top + botton + middle
            }
           
        }
    }
    for maxItem in hourGlass {
        maxs.append(maxItem.max()!)
    }
    print(hourGlass)
    return maxs.max()!
}

hourglassSum(arr: [
    [-9,-9,-9,1,1,1],
    [0,-9,0,4,3,2],
    [-9,-9,-9,1,2,3],
    [0,0,8,6,6,0],
    [0,0,0,-2,0,0],
    [0,0,1,2,4,0]
])
