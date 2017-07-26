//
//  PeopleOop.swift
//  org.javacream.training.swift.oop
//
//  Created by Apple on 25.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation


protocol Addressable{
    var address: Address {get}
}
class Company: Addressable{
    var name: String
    var _address: Array<Address> = []
    init(name: String, address: Address){
        self.name = name
        _address.append(address)
    }
    
    var address: Address{
        get {return _address[0]}
    }
    
}


class AddressBook{
    var internalAddressBook: [Addressable] = []
    
    subscript (index: Int) -> Addressable{
        get {return internalAddressBook[index]}
        set (newValue) {internalAddressBook.append(newValue)}
    }
    func dump(){
        internalAddressBook.forEach({(element) in print(element)})
    }
}

class University: Addressable{
    var name:String
    var _address: Address
    init(name: String, address: Address){
        self.name = name
        _address = address
    }
    var address: Address{
        get {return _address}
    }
}

class Person : Addressable{
    private var lastname:String
    private var givenName: String
    internal var partner: Person?
    var _address: Address?
    var address: Address{
        get {return _address!}
        set {_address = newValue}
    }
    
    init(lastname: String, givenName: String){
        self.lastname = lastname
        self.givenName = givenName
    }
    var Lastname: String{
        get {
            return lastname
        }
        
        set {
            print ("setting lastname...")
            lastname = newValue
        }
        
    }
    var GivenName: String{
        get {
            return givenName
        }
        
        set {
            givenName = newValue
        }
        
    }
    
    func info() -> String {
        var greeting =  "Hello, my name is \(givenName) \(lastname)"
        greeting += " living at \(address.city)"
        return greeting
    }
    
}


class Worker: Person{
    private var company: String
    init(lastname: String, givenName: String, company: String){
        self.company = company
        super.init(lastname: lastname, givenName: givenName)
        
    }
}
class Student: Person{
    private var university: String
    init(lastname: String, givenName: String, university: String){
        self.university = university
        super.init(lastname: lastname, givenName: givenName)
        
    }
}
struct Address{
    var city: String, street: String
    mutating func change(newCity: String, newStreet: String){
        self.city = newCity
        self.street = newStreet
    }
}

class PeopleController{
    private var people: Array<Person> = []
    
    func add(lastname: String, givenName: String){
        let newPerson = Person(lastname: lastname, givenName: givenName)
        people.append(newPerson)
    }
    func get(_ index: Int) -> Person?{
        return people.count > index ? people[index] : nil
    }
    func findAll() -> Array<Person>{
        return people
    }
    
    func findByLastname(lastname: String) -> Array<Person>{
        return people.filter({(element:Person) -> Bool in
            return element.Lastname == lastname
        })
        //return people.filter({(element) in return element.Lastname == lastname})
        //return people.filter({(element) in element.Lastname == lastname})
        //return people.filter({$0.Lastname == lastname})
    }
}


func personTest(){
    let pc = PeopleController()
    
    let address1 = Address(city: "München", street: "Marienplatz")
    let address2 = Address(city: "Berlin", street: "Alexanderplatz")
    
    pc.add(lastname: "Sawitzki", givenName: "Rainer")
    pc.add(lastname: "Mustermann", givenName: "Hans")
    pc.add(lastname: "Fabricius", givenName: "Carola")

    func printInfo(_ person: Person?){
        if let p = person {
            print (p.info())
        }
    
    }
    let p1:Person? = pc.get(0)
    p1?.address=address1
    
    printInfo(p1)
    let p2 = pc.get(2)
    p2?.address = address1

    let p3 = pc.get(1)
    
    printInfo(p2)
    let px = pc.get(42)
    printInfo(px)

    print(p1!.address)
    print(p2!.address)
    p2?.address.change(newCity: "Hamburg", newStreet: "Fischmarkt")
    
    print(p1!.address)
    print(p2!.address)
    
    p1?.marry(p1!)
    p1?.marry(p2!)
    p3?.marry(p1!)
    p2?.divorce()
    p3?.marry(p1!)
    
    print(p3! ❤ p2!)
    
    let company = Company(name: "Javacream", address: address2)
    let ab = AddressBook()
    ab[0] = p1!
    ab[1] = p2!
    ab[2] = company
    ab.dump()
    

}
