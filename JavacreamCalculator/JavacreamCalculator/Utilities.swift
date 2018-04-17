//
//  Utilities.swift
//  JavacreamCalculator
//
//  Created by Admin on 17.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func log (indent: Int, message: String){
    var output = ""
    let range = 1...indent
    for element in range {
        output = output + "*"
    }
    output = output + " " + message
    print(output)
 }
