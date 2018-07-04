//
//  Scratch.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 03.07.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func eineFunktion(){
    
    //name: String-Referenz, "..." : Literal
    let name:String = "Sawitzki"
    let number:Int = 9
    
    let names: Array<String> = ["Albert", "Zora", "Aridolin"]
    
    //innereFunktion ist eine Referenz auf ein Funktionsobjekt
    func innereFunktion(i: Int) -> String{
        return "OK"
    }
    
    let name2 = name
    let number2 = number
    let x:String = innereFunktion(i: 42)
    let y:(Int) -> String = innereFunktion
    
    let result = y(43)
    eineAndereFunktion(callback: y)
    
    //names.filter(kriterium).forEach(printOut)
    names.filter({(s: String) -> Bool in return s.starts(with: "A")}).forEach({(s:String) in print(s)})
}

func eineAndereFunktion(callback: (Int) -> String){
        print(callback(9))
}
func printOut(s:String){
    print(s)
}
func kriterium(s: String) -> Bool{
    return s.starts(with: "A")
}
