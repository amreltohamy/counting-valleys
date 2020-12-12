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
        plusMinus(arr: [1,2,3,0,0,-1,-2,-5,0])
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

  

}

