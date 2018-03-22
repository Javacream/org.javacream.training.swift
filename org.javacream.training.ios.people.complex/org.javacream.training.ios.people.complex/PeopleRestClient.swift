//
//  PeopleRestClient.swift
//  org.javacream.training.ios.people.complex
//
//  Created by Apple on 22.03.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation
extension Person{
    var toJson : String {
        let dict = ["lastname" : _lastname, "firstname" : _givenName, "gender": _gender, "height": _height] as [String : Any]
        let data =  try! JSONSerialization.data(withJSONObject: dict, options: [])
        return String(data:data, encoding:.utf8)!
    }
}
class PeopleRestClient{
    func save(_ p:Person) -> Void{
        sleep(2)
        let url = URL(string: "http://10.237.50.206:8080/people")
        var request = URLRequest(url: url!)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.httpBody=p.toJson.data(using: .utf8)
        let urlSession = URLSession.shared
        let task = urlSession.dataTask(with: request)
        task.resume()
    }
    
}
