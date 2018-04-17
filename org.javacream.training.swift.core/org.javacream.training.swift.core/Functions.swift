//
//  Functions.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation


func functions(){
    //let message = "Demo"
    parameterlessVoidFunction()
    let result = parameterlessStringFunction()
    print (result)
    let namesList = ["Sawitzki", "Meier", "Schneider"]
    functionWithParameter(pList: namesList)
    let result2 = functionWithParameters(description: "Hello", pList: namesList, size: 42)
    print(result2)
    let result3 = functionWithAnonymousParameters("Hello", namesList, 42)
    print(result3)
}

func parameterlessVoidFunction(){
    print("calling parameterlessVoidFunction")
}

func parameterlessStringFunction() -> String{
    print("calling parameterlessStringFunction")
    let resultInFunction = "Back from function"
    return resultInFunction

}

func functionWithParameter(pList: Array<String>){
    print("calling functionWithParameter")

    for element in pList{
        print (element)
    }
    
}

func functionWithParameters(description: String, pList: Array<String>, size: Int) -> String{
    print("calling functionWithParameters, description= \(description), size= \(size)")
    for ele in pList{
        print (ele)
    }
    
    return "OK"
    
}

func functionWithAnonymousParameters(_ description: String, _ pList: Array<String>, _ size: Int) -> String{
    print("calling functionWithParameters, description= \(description), size= \(size)")
    for ele in pList{
        print (ele)
    }
    
    return "OK"
    
}



