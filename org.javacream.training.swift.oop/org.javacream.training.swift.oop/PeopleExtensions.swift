//
//  PeopleExtensions.swift
//  org.javacream.training.swift.oop
//
//  Created by Apple on 25.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

extension Addressable{
    var City:String{
        get{return address.city}
    }
}

extension Person{
    
  func marry(_ partner: Person) {
        if (partner === self){
            print("even a narcist like you cannot marry himself!")
            return
        }
        if (self.partner !== nil || partner.partner !== nil){
            print("cannot marry because you or partner is married")
            return
        }
        self.partner = partner
        partner.partner = self
        print("\(self.Lastname) married \(partner.Lastname)")
    }
    
    func divorce(){
        if (self.partner === nil){
            print("cannot divorce, you are not married")
        }
        print("\(self.Lastname) divorced from \(self.partner!.Lastname)")
        self.partner?.partner = nil;
        self.partner = nil
    }

}

extension String{
    init?(_ address: Address){
        self.init("Die Adresse \(address.city)")
    }
}

func + (left: Int, right: Int) -> Int{
    return left - right
}

func == (left: Person, right: Person) -> Bool{
    return true
}
func + (left: Person, right: Person){
    left.marry(right)
}

infix operator ❤ : AdditionPrecedence

func ❤ (left: Person, right: Person) -> Person{
    left.marry(right)
    return left
}




