//
//  People.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class Person{
    static let numberOfEyes = 2
    private var _lastname:String
    let firstname: String
    var _height: Int
    init(lastname:String, firstname: String, height:Int){
        self._lastname = lastname
        self.firstname = firstname
        self._height = height
        
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
            
            print ("getting lastname")
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
