//
//  Operators.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

func operators(){
    //Eigentlich nichts besonderes...
    //+ - * /, %

    let zahl1 = 20
    let zahl2 = 22
    let zahl3 = zahl1 + zahl2
    
    print(zahl3)
    
    //+ für Zeichenketten

    let lastname = "Sawitzki"
    let givenName = "Rainer"
    let name = givenName + " " + lastname
    
    print(name)
    
    //Vergleichsoperatore mit logischer Rückgabe

    let greaterThan = zahl1 > zahl2 //->false
    print (greaterThan)
    
    //Identität
    print (zahl1 == zahl2)
    
    //Negation
    
    print (!greaterThan)
    
    //Shift-Operatoren wers mag...
    
    //Logische Verknüpfung
    
    var result = true && false
    result = true || false

    print (result)
}
