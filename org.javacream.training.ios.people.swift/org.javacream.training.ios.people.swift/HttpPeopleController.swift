//
//  HttpPeopleController.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 26.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

class HttpPeopleController{
    func load() -> Array<(String, String)>{
        var result = Array<(String, String)>()
        if let url = URL(string: "http://10.28.6.8:8080/training/data/people.json") {
            do {
                sleep(2)
                let contents = try String(contentsOf: url)
                let jsonArray = try JSONSerialization.jsonObject(with: contents.data(using: String.Encoding.utf8)!, options: [])
                let array = jsonArray as! [Any]
                for jsonObject in array{
                    let personDictionary = jsonObject as! [String: Any]
                    let lastname = personDictionary["lastname"] as! String
                    let givenName = personDictionary["givenName"] as! String
                    result.append((lastname: lastname, givenName: givenName))
                    print(jsonObject)
                }
            } catch {
                print ("error doing http request: \(error)")
            }
        } else {
            
            print ("Bad URL")
        }
        return result
    }
}
