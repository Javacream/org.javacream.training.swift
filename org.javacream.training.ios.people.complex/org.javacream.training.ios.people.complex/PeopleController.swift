//
//  PeopleController.swift
//  org.javacream.training.ios.people.complex
//
//  Created by MR on 26.07.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation
extension Person{
    var jsonRepresentation : String {
        let dict = ["lastname" : _lastname, "givenName" : _givenName]
        let data =  try! JSONSerialization.data(withJSONObject: dict, options: [])
        return String(data:data, encoding:.utf8)!
    }
}
class PeopleController{
    static var instance = PeopleController()
    
    var peopleModel = PeopleModel.instance
    
    
    func add(lastname: String, givenName: String, update: @escaping (Person) -> Void){
        
        {() -> Person in
            self.peopleModel.add(lastname: lastname, givenName: givenName);
            } ->- {(newPerson) -> Void in
                update(newPerson)
        }
    }
    
    func findAll(update: @escaping (Array<Person>) -> Void) {
    {() -> Array<Person> in
        self.peopleModel.findAll();
        } ->- {(people) -> Void in
            update(people)
        }
    }
    
    func findByLastname(lastname: String, update: @escaping (Array<Person>) -> Void){
    {() -> Array<Person> in
        self.peopleModel.findByLastname(lastname: lastname);
        } ->- {(people) -> Void in
            update(people)
        }
    }
    
    func deleteAll(update: @escaping () -> Void) {
    {() -> Void in
        self.peopleModel.deleteAll();
        } ->- {() -> Void in
            update()
        }
    }

    func loadFromServer(update: @escaping (Array<Person>) -> Void) {
    {() -> Array<Person> in
        self.loadPeopleFromServer()
        } ->- {(people) -> Void in
            update(people)
        }
    }

    func saveToFile(update: @escaping () -> Void) {
    {() -> Void in
        self.savePeopleToFile()
        } ->- {() -> Void in
            update()
        }
    }

    func loadPeopleFromServer() -> Array<Person>{
        var result = Array<Person>()
        if let url = URL(string: "http://10.16.2.226:8080/training/data/people.json") {
            do {
                sleep(2)
                let contents = try String(contentsOf: url)
                let jsonArray = try JSONSerialization.jsonObject(with: contents.data(using: String.Encoding.utf8)!, options: [])
                let array = jsonArray as! [Any]
                for jsonObject in array{
                    let personDictionary = jsonObject as! [String: Any]
                    let lastname = personDictionary["lastname"] as! String
                    let givenName = personDictionary["givenName"] as! String
                    result.append(Person(lastname: lastname, givenName: givenName))
                    peopleModel.addAll(peopleToAdd: result)
                }
            } catch {
                print ("error doing http request: \(error)")
            }
        } else {
            
            print ("Bad URL")
        }
        return result
    }

    func savePeopleToFile(){
        let documentsPath = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0])

        let people = peopleModel.findAll()
        let peopleJson = people.map({$0.jsonRepresentation})
        let path = documentsPath.absoluteString! + "/people.json"
        var data = Data()
        //data.append(contentsOf: peopleJson.description)
        FileManager.default.createFile(atPath: path, contents: data, attributes: nil)
        // Set the contents
        let contents = peopleJson.description
        
        do {
            // Write contents to file
            try contents.write(toFile: path, atomically: false, encoding: String.Encoding.utf8)
            print ("WriteToFile done")
        }
        catch let error as NSError {
            print("Ooops! Something went wrong: \(error)")
        }
    }

    func loadPeopleFromFile(){
        
    }
}


