//
//  Calculator.swift
//  JavacreamCalculator
//
//  Created by Admin on 17.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func circleArea(_ radius: Double?) -> Double{
    let result: Double
    if let r = radius{
        let area: Double = r * r * 3.14
        result = area
    }else{
        result = 0
    }
    
    log(indent: 3, message: "Result of circleArea: \(result)")
    return result
    
}


func calculateSum(numbers: Array<Int>) -> Int{
    var result = 0
    for number in numbers{
        result = result + number
    }
    return result
}

func average(numbers: Array<Int>) -> Double{
    let sum = calculateSum(numbers: numbers)
//    for number in numbers{
//        sum = sum + number
//    }
    return Double(sum)/Double(numbers.count)

}

