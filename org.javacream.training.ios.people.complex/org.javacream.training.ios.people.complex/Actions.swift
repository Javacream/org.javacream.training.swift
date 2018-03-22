//
//  Actions.swift
//  org.javacream.training.ios.people.complex
//
//  Created by Apple on 22.03.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class Action<R> {
    let type:String
    let updateFunction: (R) -> Void
    init(type: String, updateFunction: @escaping (R) -> Void){
        self.type = type
        self.updateFunction = updateFunction
    }
}


class NewPersonAction: Action<Person> {
    
    init(type: String, updateFunction: @escaping (Person) -> Void, lastname: String, firstname: String, gender: String, height: Int){
        self.lastname = lastname
        self.firstname = firstname
        self.gender = gender
        self.height = height
        super.init(type: type, updateFunction: updateFunction)
    }
    let lastname: String
    let firstname: String
    let gender: String
    let height: Int
}



