//
//  Functions.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation


func functions(){
    parameterlessVoidFunction()
    let result = parameterlessStringFunction()
    print (result)
    let names = ["Sawitzki", "Meier", "Schneider"]
    functionWithParameter(pList: names)
    functionWithParameters(description: "Hello", pList: names, size: 42)
    functionWithParameters2("Hello", names, 42)
   // functionWithParameters(description: "Hello", size: 42, pList: names)
}

func parameterlessVoidFunction(){
    print("calling parameterlessVoidFunction")
}

func parameterlessStringFunction() -> String{
    print("calling parameterlessStringFunction")
    return "Back from function"
}

func functionWithParameter(pList: Array<String>){
    print("calling functionWithParameter")

    for ele in pList{
        print (ele)
    }
    
}

func functionWithParameters(description egal: String, pList: Array<String>, size: Int){
    print("calling functionWithParameters " + egal)
    
    for ele in pList{
        print (ele)
    }
    
}
func functionWithParameters(name egal: String, pList: Array<String>, size: Int){
    print("calling functionWithParameters " + egal)
    
    for ele in pList{
        print (ele)
    }
    
}


func functionWithParameters(description egal: String, pList: Array<String>, size: Int, height: Double ){
    print("calling functionWithParameters " + egal)
    
    for ele in pList{
        print (ele)
    }
    
}

func functionWithParameters2(_ description: String, _ pList: Array<String>, _ size: Int){
    print("calling functionWithParameters " + description)
    
    for ele in pList{
        print (ele)
    }
    
}
