//
//  Oop.swift
//  org.javacream.demo.swift
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func oop(){
    let sawitzki = Person(lastname: "Sawitzki", firstname: "Rainer")
    print (sawitzki.sayHello())
    sawitzki.lastname = "Meier"
    print (sawitzki.lastname)
    print (sawitzki.firstname)
    //sawitzki.firstname = "Hugo"
}

class Person{
    static let numberOfEyes = 2
    private var _lastname:String
    let firstname: String
    init(lastname:String, firstname: String){
        self._lastname = lastname
        self.firstname = firstname
        
    }
    
    var lastname:String {
        get {
            
            print ("getting lastname")
            return _lastname
        }
        
        set {
            print("setting lastname")
            _lastname = newValue //im setter ist das der von außen gesetzte Wert
        }
    }
    
    func sayHello() -> String{
        return "Hello, my name is \(self._lastname)"
    }
}
