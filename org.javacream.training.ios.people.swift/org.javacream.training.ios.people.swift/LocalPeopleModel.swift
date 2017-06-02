//
//  LocalPeopleModel.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 26.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

class LocalPeopleModel{
    private var people: Array<Person> = []
    
    func add(lastname: String, givenName: String){
        let newPerson = Person(lastname: lastname, givenName: givenName)
        people.append(newPerson)
    }
    func get(_ index: Int) -> Person?{
        return people.count > index ? people[index] : nil
    }
    
    func dump(){
        print(people)
    }
    
}
