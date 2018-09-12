//
//  People.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class Person{
    static let numberOfEyes = 2
    private var _lastname:String
    let firstname: String
    var _height: Int
    init(lastname:String, firstname: String, height:Int){
        self._lastname = lastname
        self.firstname = firstname
        self._height = height
        
    }
    
    var height: Int{
        get{
            return _height
        }
        
        set{
            if (newValue > 0){
                _height = newValue
            }else{
                print("Illegal height: \(newValue)")
            }
        }
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
        return "Hello, my name is \(self.firstname) \(self._lastname)"
    }
    
}
enum PeopleModelError:Error {
    case save(String)
}

class PeopleModel{
    private let heightRange = 25...250
    var people: Array<Person> = []
    @discardableResult func savePerson(lastname:String, firstname:String, height: Int) throws -> Person {
        if (lastname.count < 2 || firstname.count < 2 || !heightRange.contains(height)){
            throw PeopleModelError.save("illegal parameters: lastname=\(lastname), firstname=\(firstname), height=\(height)")
        }else{
            let p = Person(lastname: lastname, firstname: firstname, height: height)
            people.append(p)
            return p
        }
    }
    
    
}
