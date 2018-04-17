//
//  Calculator.swift
//  JavacreamCalculator
//
//  Created by Admin on 17.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func circleArea(_ radius: Double?) -> Double{
    if let r = radius{
        let area: Double = r * r * 3.14
        return area
    }else{
        return 0
    }
    
}
