//
//  ReferencesAndValues.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

func referencesAndValues(){
    
    /*
     Demonstration, die zeigt, dass Listen Value-Objects sind
     oder anders: Arrays und Dictionaries und Sets sind als 'structs' implementiert
    */
    var list1 = ["A", "B", "C"]
    list1[0] = "Z"
    
    print(list1) //
    
    var list2 = list1 //Hier wird ein neues Value erzeugt als KOPIE der Zuweisung
    
    print(list2) //
    
    list2[0] = "A"
    print("########################")
    print(list1) //
    print(list2) //
    
    callWithList(&list2)
    print(list2)
}

func callWithList(_ list : inout Array<String>){
    list[2] = "Hugo";
    print(list)
}


