//
//  VarrsAndTypes.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

func varsAndTypes(){
    //var <name> = Literal //Variable
    var name = "Sawitzki" //Type Inference: type of name = type of literal
    name = "Mustermann"
    
    let name2 = "Hugo"
    //name2 = "Emil" //Compiler error, let = const
    
    //name = 42 //Compiler error: name is String, not Int! Swift is STATICALLY TYPED
    let number: Int = 42 //Type annotation may be present
    
    let realNumber = 47.11
    let state = true //or false
    
    //String interpolation
    
    print("name: \(name), name2: \(name2), number: \(number), realNumber: \(realNumber), state: \(state) ")
}



