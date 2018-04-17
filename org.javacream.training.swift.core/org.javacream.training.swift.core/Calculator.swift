//
//  Calculator.swift
//  org.javacream.training.swift.core
//
//  Created by Admin on 17.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation
func calculator(){
    let radius1 = 1.0
    let areaForRadius1 = circleArea(radius: radius1)
    let radius2 = 2.0
    let areaForRadius2 = circleArea(radius: radius2)
    print("Results: area for radius \(radius1) is \(areaForRadius1) and area for radius \(radius2) is \(areaForRadius2) and ")
    
}

func circleArea(radius: Double) -> Double{
    let area: Double = radius * radius * 3.14
    return area
    
}
