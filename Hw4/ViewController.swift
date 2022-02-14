//
//  ViewController.swift
//  Hw4
//
//  Created by Dmitriy Budanov on 14.02.2022.
//

import UIKit
class ViewController: UIViewController {
    var x = [(1, "x"), (4, "y"), (6, "a")]
    func exponentiation(number num:Int, Power power:Int = 2) -> Int {
        var numberToThePower:Int = 1
        for _ in 1...power {
            numberToThePower *= num
        }
        return numberToThePower
    }
    func sortcolage(){
    let newArray = x.map {element in
        (exponentiation(number: element.0),element.1)
        }.filter { element in
            element.0 % 2 == 0
        }.sorted { left,right in
            left.1 < right.1
        }
        print(newArray)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sortcolage()
}
   
}

