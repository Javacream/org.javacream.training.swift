//
//  FunctionObjects.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

/*
 Eine Funktion hat einen Namen
 und
 eine Signatur
 
 Signatur formal
 
 () -> Void
 */
func functionsAsObjects(){
    let stringResult : String = returnsString()
    let result : ((Int, Int) -> Double) = demo3()
    
    let doubleResult = result(4, 2)
    
    print(stringResult)
    print(doubleResult)
}

/*
    (Int, String) -> Double
*/
func demo(number: Int, description: String) -> Double{
    return 4.2
}

//WICHTIG: Eine Signatur ist ein Typ (!)
//NOCH WICHTIGER: Funktionen sind in Swift Top-Level Datentypen


func demo2(demo: Int, param2: (Int, String) -> Double ){
    let result = demo + 42
    print (result)
    
    let doubleResult = param2(demo, "Hugo")
    print(doubleResult)
}

func returnsString() -> String{
    return "Sawitzki"
}

func demo3() -> (Int, Int) -> Double{
    func innerFunction(number1: Int, number2: Int) -> Double{
        return 4.2
    }
    
    return innerFunction
}








