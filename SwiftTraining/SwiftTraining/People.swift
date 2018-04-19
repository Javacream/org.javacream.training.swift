//
//  People.swift
//  SwiftTraining
//
//  Created by Admin on 18.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation
//Änderung der Vorgabe: Eine Person soll potenziell einen Partner haben, "heiraten können"
class Person{
    let personId: Int
    let firstname: String
    var lastname: String
    var height: Int
    var partner: Person?
    var address: Address?
    
    init(personId: Int, lastname: String, firstname: String){
        self.personId = personId
        self.lastname = lastname
        self.firstname = firstname
        self.height = 0
       
    }
    
    func marry(_ partner: Person) ->Bool{
        if ((partner.partner == nil) && (self.partner == nil) && (self !== partner)){
            self.partner = partner
            partner.partner = self
            return true
        }else{
            return false
        }
    }

    func divorce() -> Bool{
        if let p = self.partner{
            p.partner = nil
            self.partner=nil
            return true

        }else{
            return false
        }
//
//        if (self.partner != nil){
//            self.partner!.partner = nil
//            self.partner=nil
//            return true
//        }
//        else{
//            return false
//        }
    }
    func sayHello() -> String{
        return "Hello, my name is \(firstname) \(lastname)"
    }
    
    func info() -> String{
        return "Person: personId=\(personId), lastname=\(lastname), firstname=\(firstname), height=\(height)"

    }
    
}

class Student : Person{
    var university: String = ""
    init(personId: Int, lastname: String, firstname: String, university: String) {
        super.init(personId: personId, lastname: lastname, firstname: firstname)
        self.university = university
    }
    func study() -> String{
        return "\(self.sayHello()) studying at \(university)"
    }
    override func sayHello() -> String{
        return "\(super.sayHello()) studying at \(university)"
    }

}

class PeopleController{
    var counter = 0
    
    func create(lastname: String, firstname: String) -> Person{
        counter = counter + 1
        let person = Person(personId: counter, lastname: lastname, firstname: firstname)
        return person
    }
    func createStudent(lastname: String, firstname: String, university: String) -> Student{
        counter = counter + 1
        let person = Student(personId: counter, lastname: lastname, firstname: firstname, university: university)
        return person
    }
}

struct Address{
    init(city: String, street: String) {
       self.city = city
       self.street = street
    }
    var city: String
    var street: String

}

