//
//  Collections.swift
//  org.javacream.demo.swift
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func trainingCollections(){
    let list:Array<String> = ["A", "B", "C"]
    let range = 1...5
    let dictionary:Dictionary<Int, String> = [49 : "Germany", 39: "Italy"]
    
    print(list[2])
    print(dictionary[49]!)
    
    for n in range{
        print (n)
    }
    
    let set:Set<String> = ["A", "B", "A"]
    let set2 = ["A", "B"] as Set
    
    
    
    
}
