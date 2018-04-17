//
//  TypeConversionAndErrorHandling.swift
//  org.javacream.training.swift.core
//
//  Created by Admin on 17.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func typeConversion(){
    let input1 = "4"
    let input2 = "2"
    
    let result = input1 + input2
    
    print(result)
    
    let input1Number:Int? = Int(input1)
    let input2Number:Int? = Int(input2)
    
    let intResult = input1Number! + input2Number!
    
    print(intResult)

    
}
