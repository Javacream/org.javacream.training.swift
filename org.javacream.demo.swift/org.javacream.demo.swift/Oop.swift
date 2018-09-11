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
    let worker:Worker = Worker(lastname: "Schufter", firstname: "Egon", company: "Integrata")
    let student:Student = Student(lastname: "Einstein", firstname: "Albert", university: "LMU")
    print("Student: \(student.sayHello())")
    printOut(person: sawitzki)
    printOut(person: worker)
    printOut(person: student)
    worker.work()
    student.study()

    
}

class Worker: Person{
    var company: String
    init(lastname: String, firstname: String, company: String){
        self.company = company
        super.init(lastname: lastname, firstname: firstname)
        
    }
    func work(){
        print("\(lastname) is working")
    }
    
    override func sayHello() -> String{
        return "\(super.sayHello()) working at \(company)"
    }
}
class Student: Person{
    var university: String
    init(lastname: String, firstname: String, university: String){
        self.university = university
        super.init(lastname: lastname, firstname: firstname)
        
    }
    func study(){
        print("\(lastname) is studying")
    }
    override func sayHello() -> String{
        return "\(super.sayHello()) studying at \(university)"
    }

}

func printOut(person:Person){
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
    var lastname:String
    var firstname: String
    var address:Address?
    
    init(lastname:String, firstname: String){
        self.lastname = lastname
        self.firstname = firstname
        
    }
    /*
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
    */
    func sayHello() -> String{
        return "Hello, my name is \(self.firstname) \(self.lastname)"
    }
}
