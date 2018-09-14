//
//  People.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class Person : NSObject, NSCoding{
    func encode(with aCoder: NSCoder) {
        aCoder.encode(lastname, forKey: "lastname")
        aCoder.encode(firstname, forKey: "firstname")
        aCoder.encode(gender, forKey: "gender")
        aCoder.encode(height, forKey: "height")
    }
    convenience required init?(coder aDecoder: NSCoder) {
        let lastname = aDecoder.decodeObject(forKey: "lastname") as! String
        let firstname = aDecoder.decodeObject(forKey: "firstname") as! String
        let gender = aDecoder.decodeObject(forKey: "gender") as! String
        let height = aDecoder.decodeInteger(forKey: "height")
        self.init(lastname: lastname, firstname: firstname, height: height, gender: gender)
    }
    static let numberOfEyes = 2
    private var _lastname:String
    let firstname: String
    let gender: String
    var _height: Int
    init(lastname:String, firstname: String, height:Int, gender:String = "m"){
        self._lastname = lastname
        self.firstname = firstname
        self._height = height
        self.gender = gender
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
enum PeopleModelErrorEnum:Error {
    case save(description: String)
}

class PeopleModelErrorClass:Error {
    var description:String
    init(description:String){
        self.description = description
    }
}

class PeopleModel{
    private let heightRange = 25...250
    var people: Array<Person> = []
    
    init(){
        
        if let read = NSKeyedUnarchiver.unarchiveObject(withFile: getFullPath(filename: "people").absoluteString) as! Array<Person>?{
            people = read
        }else{
            people.append(Person(lastname: "Sawitzki", firstname: "Rainer", height: 183))
            people.append(Person(lastname: "Sawitzki", firstname: "Klaus", height: 183))
            people.append(Person(lastname: "Muster", firstname: "Rainer", height: 183))
        }

    }
    @discardableResult func savePerson(lastname:String, firstname:String, height: Int) throws -> Person {
        if (lastname.count < 2 || firstname.count < 2 || !heightRange.contains(height)){
            //throw PeopleModelErrorClass(description: "illegal parameters: lastname=\(lastname), firstname=\(firstname), height=\(height)")
            throw PeopleModelErrorEnum.save(description: "illegal parameters: lastname=\(lastname), firstname=\(firstname), height=\(height)")
        }else{
            let p = Person(lastname: lastname, firstname: firstname, height: height)
            people.append(p)
            do {
                let path = getFullPath(filename: "people")
                let data = createSaveableData(object: people)
                try data.write(to: path)
                let pathAsString = path.absoluteString
                let readData = NSKeyedUnarchiver.unarchiveObject(withFile: pathAsString)
                if let read =  readData as! Array<Person>?{
                    people = read
                }
                
            } catch {
                print("Couldn't write file")
            }
            
            return p
        }
    }
    
    func searchPeopleByLastname(lastname: String) -> Array<String>{
        //Simulation einer Netzwerk-Latenz
        sleep(3)
        return people.filter({(person) in person.lastname.contains(lastname)}).map({(person) in "\(person.firstname) \(person.lastname)"})
        
    }
}


