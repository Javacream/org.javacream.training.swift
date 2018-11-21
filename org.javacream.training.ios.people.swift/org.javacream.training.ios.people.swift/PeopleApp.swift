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
    
    var toJson: String {
        let dict = ["lastname" : lastname, "firstname" : firstname, ] as [String : Any]
        let data =  try! JSONSerialization.data(withJSONObject: dict, options: [])
        return String(data:data, encoding:.utf8)!
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
        
        func saveInternRest() -> Person{
            let p =  Person(lastname: lastname, firstname: firstname)
            people.append(p)
            let url = URL(string: "http://10.44.3.240:9090/people")
            var request = URLRequest(url: url!)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            request.httpBody=p.toJson.data(using: .utf8)
            let urlSession = URLSession.shared
            let task = urlSession.dataTask(with: request)
            task.resume()
            return p
        }
        saveInternRest ->- saveUpdate
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
            sleep(2)
            people.map({(p:Person) in return p.lastname}).forEach({(lastname) in print(lastname)})
        }
        dumpIntern ->- dumpUpdate
    }
    
    static func load(loadUpdate: @escaping (Array<Person>) -> Void){
        func loadIntern() -> Array<Person>{
            var result = Array<Person>()
            if let url = URL(string: "http://10.44.3.240:9090/people") {
                do {
                    let contents = try String(contentsOf: url)
                    let jsonArray = try JSONSerialization.jsonObject(with: contents.data(using: String.Encoding.utf8)!, options: [])
                    let array = jsonArray as! [Any]
                    for jsonObject in array{
                        let personDictionary = jsonObject as! [String: Any]
                        let lastname = personDictionary["lastname"] as! String
                        let firstname = personDictionary["firstname"] as! String
                        result.append(Person(lastname: lastname, firstname: firstname))
                    }
                } catch {
                    print ("error doing http request: \(error)")
                }
            } else {
                
                print ("Bad URL")
            }
            people = people + result
            return result
        }
        
        loadIntern ->- loadUpdate
    }
    
}
