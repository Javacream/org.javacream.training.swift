//
//  PeopleModel.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 20.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class Person{
    var lastname:String = ""
    var firstname:String = ""
    var height:Int = 0
    var id: Int
    
    init(id: Int, lastname:String, firstname:String, height:Int) {
        self.id = id
        self.lastname = lastname
        self.firstname = firstname
        self.height = height
    }
    func info() -> String{
        return "Person: lastname=\(lastname), firstname=\(height), lastname=\(height)"
    }
}

class PeopleModel{
    static var people:Dictionary<Int, Person> = Dictionary()
    
    private static var counter = 0;
    static func save(lastname:String, firstname:String, height:Int){
            counter = counter + 1
            let id = counter
            let person = Person(id: id, lastname: lastname, firstname: firstname, height: height)
        people[id] = person
    }
    
    static func dump() -> String{
        var result = ""
        for id in people.keys{
            result = result + ", \(people[id]!.info())"
        }
        return result
        
    }

    static func search(id:Int) -> Person?{
        return people[id]
    }
}
