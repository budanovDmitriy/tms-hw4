//
//  ViewController.swift
//  Hw4
//
//  Created by Dmitriy Budanov on 14.02.2022.
//

import UIKit
class ViewController: UIViewController {
    var firstArrayOfColage = [(1, "x"), (4, "y"), (6, "a")]
    var secondArrayOfColage = [(5, "x"), (4, "f"), (10, "b"), (20,"f")]
    var thirdArrayOfColage = [("x", 5), ("g", 10),("a",44)]
    func exponentiation(number num:Int, Power power:Int = 2) -> Int {
        var numberToThePower:Int = 1
        for _ in 1...power {
            numberToThePower *= num
        }
        return numberToThePower
    }
    func sortArrayOfColage(array : [(Int,String)]){
    let newArray = array.map {element in
        (exponentiation(number: element.0),element.1)
        }.filter { element in
            element.0 % 2 == 0
        }.sorted { left,right in
            left.1 < right.1
        }
        print(newArray)
    }
    func sortArrayOfColage(array : [(String,Int)]){
    let newArray = array.map {element in
        (element.0,exponentiation(number: element.1))
        }.filter { element in
            element.1 % 2 == 0
        }.sorted { left,right in
            left.0 < right.0
        }
        print(newArray)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sortArrayOfColage(array:firstArrayOfColage)
        sortArrayOfColage(array:secondArrayOfColage)
        sortArrayOfColage(array:thirdArrayOfColage)
}
   
}

