//
//  VarrsAndTypes.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

func varsAndTypes(){
    
    //var <name> = Literal-Wert
    
    let name = "Sawitzki" //Die Variable name ist eine Referenz auf ein Objekt vom Typ String
    print ("Name: " + name)

    var name2 :String? = "Sawitzki"
    print(name2!)
    
    let name4 = name2! as String
    print (name4)
    var height = 183

    let name3 = "Rainer"
    print(name3)
    name2 = nil
    

    if let x = name2 {
        print (x)
    }
    
    height = 181
    print(height)
    
    let list : Array<String> = ["A", "B"]
    let dict: Dictionary<Int, String> = [81373: "München", 77123: "Stuttgart"]
    
    print(list)
    print(dict)
    
    let range = 1...9

    print(range)
    
}
