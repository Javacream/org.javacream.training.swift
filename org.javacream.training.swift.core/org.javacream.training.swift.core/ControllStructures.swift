//
//  ControllStructures.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

func controllStructures(){
    loops()
    decisions()
}

func loops(){
    let list = ["A", "B", "C"]
    for element in list {
        print(element)
    }
    
    let range = 1...2
    for element in range.reversed() {
        print(element)
    }
    
    
}

func decisions(){
    var condition =  (5%2 == 0)
    

    if (condition) {
        print ("condition was true")
    } else {
        print ("condition was false")
    }
    condition = true
    let name = "Sawitzki"
    switch name {
    case "Sawitzki":
        print ("it was Sawitzki")
    case "Mustermann":
        print ("it was Mustermann")
    default:
        print("it was someone else")
    }
}
