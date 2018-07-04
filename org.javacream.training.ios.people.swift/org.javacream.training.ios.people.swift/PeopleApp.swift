//
//  PeopleApp.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 03.07.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class Person{
    let firstname:String
    var lastname:String
    
    init(lastname:String, firstname:String){
        self.firstname = firstname
        self.lastname = lastname
    }
    
    func info() -> String{
        return "Person: \(self.firstname) \(self.lastname)"
    }
}

class PeopleController{
    static var people: Array<Person>=[]
    static func save(lastname:String, firstname:String, saveUpdate: @escaping (Person) -> Void) -> Void{
        func saveIntern() -> Person{
            let p =  Person(lastname: lastname, firstname: firstname)
            people.append(p)
            sleep(2)//Simulation der Netzwerk-Latenz
            return p
        }
        saveIntern ->- saveUpdate
    }
    static func clear(clearUpdate: @escaping (Int) -> Void){
        func clearIntern() -> Int{
            let count = people.count
            people.removeAll()
            return count
        }
        clearIntern ->- clearUpdate
    }
    static func dump(dumpUpdate: @escaping () -> Void) {
        func dumpIntern() -> Void{
        people.map({(p:Person) in return p.lastname}).forEach({(lastname) in print(lastname)})
        }
        dumpIntern ->- dumpUpdate
    }
        
}
