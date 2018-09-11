//
//  Functions.swift
//  org.javacream.demo.swift
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func trainingFunctions(){
    print("Start training functions...")
    demoNoParamVoid()
    let result = demoNoParamString()
    print(result)
    demoParamVoid(p1: "Hello", p2: 42)
    demoApiParamVoid(message: "Hello", counter: 42)
    demoClassicParamVoid("Hello", 42)
    
    print ("training functions done")
}


func demoNoParamVoid(){
    print ("demoNoParamVoid")
}

func demoNoParamVoid2() -> Void{
    print ("demoNoParamVoid")
}


func demoNoParamString() -> String{
    print ("demoNoParamString")
    return "OK"
}
func egal() -> Int{
    print ("demoNoParamString")
    return 42
}


func demoParamVoid(p1:String, p2:Int){
    print ("demoParamVoid \(p1) \(p2)" )
}

func demoApiParamVoid(message p1:String, counter p2 :Int){
    print ("demoApiParamVoid \(p1) \(p2)" )
}

func demoClassicParamVoid(_ p1:String, _ p2 :Int){
    print ("demoClassicParamVoid \(p1) \(p2)" )
}
