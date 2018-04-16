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

func optionals(){
    //Nicht gesetzte Variaben haben den Wert nil (andere Sprachen: null, NULL, NIL)
    var name:String? = "Sawitzki" //name is an optional string
    name = nil
    var number:Int? = 43
    number = nil

    let name2 = "Hugo"
    
    name = name2
    //name2 = name
    
    //notwendige Validierung: Nicht-optionals ist vor einer Verarbeitung eine Prüfung auf nil NICHT NOTWENDIG!!!
    
    print(name2.lowercased())
    //notwendige Validierung: optionals müssen auf nil geprüft werden, compiler check!!!
    //print(name.lowercased())
    
    //Wie wird auf nil geprüft:
    //HOLZHAMMER, gefährlich
    //print(name!.lowercased())//Exception
    //Funktioniert bei Objekten -> später
    //lowercased wird nur ausgeführt, wenn name nicht nil ist
    print(name?.lowercased())
    
    //if let-Konstruktion. Nur falls name eine  Wert hat wird die Zuweisung und der Block ausgeführt
    if let temp = name {
        print("name was not nil")
        print (temp.lowercased())
    }else{
        print("name was nil")

    }

}

func complexTypes(){
    //liste mit Zugriff über Index
    var list : Array<String> = ["element1", "element2", "element3"]
    print(list[0]) //-> element1
    
    //Wertebereich von bis
    var range = 1...10
    
    var map : Dictionary<Int, String> = [81373: "München", 30111: "Berlin"]
    var value:String? = map[81373]
    value = map[0] //-> nil

    
    
    
}



