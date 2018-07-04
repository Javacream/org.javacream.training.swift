//
//  OOP.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 03.07.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation


struct Address{
    var city:String
    let street:String
}

class Person{
    //Attribute
    let firstname:String
    var lastname:String
    var address:Address?
    
    init(lastname:String, firstname:String){
        self.lastname = lastname
        self.firstname = firstname
    }
    //Methode
    func info() -> String{
        return "\(self.firstname) \(self.lastname)"
    }
    
    var partner:Person?
    func marry(pPartner:Person){
        if (self.partner === nil && pPartner.partner === nil && (pPartner !== self)){
            self.partner = pPartner
            pPartner.partner = self
        }
    }
    
    func divorce(){
        if let p = self.partner{
            p.partner = nil
            self.partner = nil
        }
        
    }
    
}

class Student:Person{
    init(lastname:String, firstname:String, university:String){
        self.university = university
        super.init(lastname: lastname, firstname: firstname)
    }
    var university:String
    func study(){
        print("studying...")
    }
    
    override func info() -> String{
        let infoFromSuper = super.info()
        return infoFromSuper + ", studying at \(self.university)"
    }
}

class Worker:Person{
    init(lastname:String, firstname:String, company:String){
        self.company = company
        super.init(lastname: lastname, firstname: firstname)
    }
    var company:String
    func work(){
        print("work...")
    }
}


func demo(){
    let a1 = Address(city: "München", street: "Marienplatz")
    let a2 = Address(city: "Berlin", street: "Alexanderplatz")
    
    let p1 = Person(lastname: "Sawitzki", firstname: "Rainer")
    let p2 = Person(lastname: "Meier", firstname: "Hugo")

    p1.address = a1
    print(a1.city)

    print(p1.lastname) //-> Sawitzki
    print (p2.info()) //-> Hugo Meier
    
    var a3 = a1
    let p3 = p1
    
    print(p3.lastname)
    print (a3.city)
    
    p3.lastname = "Mustermann"
    a3.city = "Stuttgart"
    print (p1.lastname) //Was wird ausgegeben?
    print (a1.city) //Dito
    
    let s = Student(lastname: "Einstein", firstname: "Albert", university: "LMU München")
    s.study()
    print(s.info())
    
}




