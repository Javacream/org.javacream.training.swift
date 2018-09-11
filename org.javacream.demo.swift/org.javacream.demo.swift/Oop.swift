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
    print(sawitzki.lastname)
    printOut(person: sawitzki)
    print(sawitzki.lastname)
    let person = sawitzki
    person.firstname = "Hans"
    print(sawitzki.firstname)
    
    var a1 = Address(city: "München", street: "Marienplatz")
    sawitzki.address = a1
    
    let mustermann = Person(lastname: "Mustermann", firstname: "Hanna")
    mustermann.address = a1
    
    sawitzki.address?.city = "Berlin"
    sawitzki.address?.street = "Alexanderplatz"
    
    print(mustermann.address!.info())


    
}

func printOut(person:Person){
    print (person.sayHello())
    person.lastname = "Meier"
    print (person.sayHello())

}

struct Address{
    var city:String
    var street:String
    
    func info() -> String{
        return "Address: city=\(city), street=\(street)"
    }
}

class Person{
    static let numberOfEyes = 2
    private var _lastname:String
    var firstname: String
    var address:Address?
    
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
