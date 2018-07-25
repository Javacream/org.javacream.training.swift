//
//  PeopleModel.swift
//  org.javacream.training.ios.people.complex
//
//  Created by MR on 26.07.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

class PeopleModel{
    static let instance = PeopleModel()
    private var people: Array<Person> = []
    
    func add(lastname: String, givenName: String) -> Person{
        let newPerson = Person(lastname: lastname, givenName: givenName)
        people.append(newPerson)
        sleep(2)
        return newPerson
    }
    
    func findAll() -> Array<Person>{
        sleep(2)
        return people
    }
    
    func findByLastname(lastname: String) -> Array<Person>{
        sleep(2)
        return people.filter({(element:Person) in

            return element.Lastname == lastname}
        )
    }
    func deleteAll() -> Void{
        sleep(2)
        people.removeAll()
    }
    func addAll(peopleToAdd:Array<Person> ) -> Void{
        sleep(2)
        people.append(contentsOf: peopleToAdd)
    }
}
