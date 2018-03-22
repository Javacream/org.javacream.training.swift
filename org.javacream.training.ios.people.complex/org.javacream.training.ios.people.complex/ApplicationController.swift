//
//  File.swift
//  org.javacream.training.ios.people.complex
//
//  Created by Apple on 22.03.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class ApplicationController{
    let model = ApplicationContext.peopleModel
    let restClient = ApplicationContext.peopleRestClient
    func dispatch <T> (action: Action<T>){
        let type = action.type
        let updateFunction = action.updateFunction
        var backgroundFunction: () -> T
        switch(type){
            case "NewPersonAction":
                let npa:NewPersonAction = action as! NewPersonAction
                let person = Person(lastname: npa.lastname, givenName: npa.firstname, gender: npa.gender, height: npa.height)
                backgroundFunction = {() in self.restClient.save(person); return person as! T}
                break
            default:
                backgroundFunction = {() in assertionFailure("Unsupported Action"); return "OK" as! T}
        }
        {() in backgroundFunction()} ->- {(param:T) in updateFunction(param)}
    }
    
    
}
