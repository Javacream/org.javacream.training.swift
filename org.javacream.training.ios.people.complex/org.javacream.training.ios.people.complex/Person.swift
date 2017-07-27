//
//  Person.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 26.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

class Person : CustomStringConvertible{
    var description: String{
        get{return info()}
    }
    var _lastname:String, _givenName: String
    
    init(lastname: String, givenName: String){
        _lastname = lastname
        _givenName = givenName
    }
    
    var Lastname: String {
        get{ return _lastname}
        set {_lastname = newValue}
    }
    var GivenName: String {
        get{ return _givenName}
    }
    
    func info() -> String{
        return "Person: \(_givenName) \(_lastname)"
    }
}
