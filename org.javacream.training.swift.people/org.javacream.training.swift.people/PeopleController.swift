//
//  PeopleController.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 13.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

extension Person{
    var toJson: String {
        let dict = ["lastname" : lastname, "firstname" : firstname, "height": height] as [String : Any]
        let data =  try! JSONSerialization.data(withJSONObject: dict, options: [])
        return String(data:data, encoding:.utf8)!
    }
}


class PeopleController{
    var peopleModel: PeopleModel!
    func asyncSearchPeopleByLastname (lastname: String, update: @escaping (Array<String>) -> Void) -> Void{
        func background() ->Array<String>{
            return peopleModel.searchPeopleByLastname(lastname: lastname)
        }
        background ->- update
    }
    
    func asyncSavePerson(lastname: String, firstname:String, height: Int, update: @escaping (Person) -> Void, error: @escaping (Error) -> Void){
        func saveServer() -> Person{
            let p =  Person(lastname: lastname, firstname: firstname, height: height)
            let url = URL(string: "http://10.28.7.100:9090/people")
            var request = URLRequest(url: url!)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            request.httpBody=p.toJson.data(using: .utf8)
            let urlSession = URLSession.shared
            let task = urlSession.dataTask(with: request)
            task.resume()
            return p
        }
        func background() throws -> Person{
            return try PeopleApplicationContext.peopleModel.savePerson(lastname: lastname, firstname: firstname, height: height)
        }
        
        saveServer ->>- (update, error)
    }
}
