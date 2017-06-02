//
//  Scratch.swift
//  org.javacream.training.swift.oop
//
//  Created by Apple on 01.06.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

class SimpleAddress{
    var city: String
    var street: String
    
    init(city: String, street: String){
        self.city = city
        self.street = street
    }
    
    func change(city: String, street: String){
        self.city = city
        self.street = street
        
    }
    func addressInfo()-> String{
        return "Address: city=\(city), street=\(street)"
    }
    
}

struct SimpleAddressValue{
    var city: String
    var street: String
    init(city: String, street: String){
        self.city = city
        self.street = street
    }
    func addressInfo()-> String{
        return "Address: city=\(city), street=\(street)"
    }
    mutating func change(city: String, street: String){
        self.city = city
        self.street = street
        
    }
    
}

class SimpleWorker: SimplePerson{
    
}
class SimplePerson{
    
    init(_ pLast: String, _ pFirst: String){
        lastname = pLast
        firstname = pFirst
    }
    private var lastname:String
    private var firstname:String
    var address: SimpleAddressValue?
    var Lastname : String {
        get  {return lastname}
        
        set {lastname = newValue}
    }

    var Firstname : String {
        get  {return firstname}
    }

    func info () -> String{
        return "Hello, my name is \(firstname) \(lastname)"
    }
}
