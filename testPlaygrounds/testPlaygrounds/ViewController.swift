//
//  ViewController.swift
//  testPlaygrounds
//
//  Created by Amr Eltohamy on 12/12/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        staircase(n: 6)
    }

  
    func plusMinus(arr: [Int]) {

        var postives = 0.0
        var negatives = 0.0
        var zeros = 0.0
        let count = Double(arr.count)
        for element in arr {
            if element > 0 {
                postives+=1
            }else if element < 0 {
                negatives+=1
            }else {
                zeros+=1
            }
        }
        print(String(format: "%.6f", postives/count))
        print(String(format: "%.6f", negatives/count))
        print(String(format: "%.6f", zeros/count))
    }
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

  

}

