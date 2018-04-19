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
    var university: University?
    func study() -> String{
        return "\(self.sayHello()) studying at \(university?.name)"
    }
    override func sayHello() -> String{
        return "\(super.sayHello()) studying at \(String(describing: university?.name))"
    }

}

class Worker : Person{
    var company: Company?
    func work() -> String{
        return "\(self.sayHello()) working at \(String(describing: company?.companyName))"
    }
    override func sayHello() -> String{
        return "\(super.sayHello()) working at \(String(describing: company?.companyId))"
    }
    
}


class University{
    let name: String
    let address: Address
    init(name: String, address: Address){
        self.name = name
        self.address = address
    }
    
    func info() -> String{
        return "University: name= \(name), address=\(address)"
    }
}
class Company{
    let companyId: Int
    let companyName: String
    let address: Address
    init(companyId: Int, name: String, address: Address){
        self.companyId = companyId
        self.companyName = name
        self.address = address
    }
    
    func info() -> String{
        return "Company: name= \(companyName), address=\(address)"
    }
}

class PeopleController{
    var counter = 0
    var people: Dictionary<Int, Person> = [:]
    
    func create(lastname: String, firstname: String) -> Person{
        counter = counter + 1
        let person = Person(personId: counter, lastname: lastname, firstname: firstname)
        people[counter] = person
        return person
    }
    func createStudent(lastname: String, firstname: String, university: University?) -> Student{
        counter = counter + 1
        let person = Student(personId: counter, lastname: lastname, firstname: firstname)
        person.university = university
        people[counter] = person
       return person
    }
    func createWorker(lastname: String, firstname: String, company: Company?) -> Worker{
        counter = counter + 1
        let person = Worker(personId: counter, lastname: lastname, firstname: firstname)
        person.company = company
        people[counter] = person
        return person
    }
    
    func findById(id: Int) -> Person? {
        return people[id]
    }
    func findAll() -> Array<Person> {
        return Array(people.values)
    }
    func deleteById(id: Int) -> Void {
        people.removeValue(forKey: id)
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

