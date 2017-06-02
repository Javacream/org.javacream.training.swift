//
//  SimplePersonTest.swift
//  org.javacream.training.swift.oop
//
//  Created by Apple on 01.06.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import XCTest
@testable import org_javacream_training_swift_oop
class SimplePersonTest: XCTestCase {
    
    func testSimplePerson() {
        
        let p1 = SimplePerson("Sawitzki", "Rainer")
        let p2 = SimplePerson("Mustermann", "Hans")
        
        let a = SimpleAddressValue(city: "München", street: "Marienplatz")
        p1.address = a
        p2.address = a //SimpleAddress(city: "München", street: "Marienplatz")
        
        XCTAssertEqual("Hello, my name is Rainer Sawitzki", p1.info())
        XCTAssertEqual("München", p1.address?.city)
        personHelper(person: p1)
        XCTAssertEqual("Brezner", p1.Lastname)
        XCTAssertEqual("Berlin", p1.address?.city)
        XCTAssertEqual("München", p2.address?.city)
    }
    
    
    func personHelper(person: SimplePerson){
        person.Lastname = "Brezner"
        //person.address?.change(city: "Berlin", street: "Alexanderplatz")
        person.address?.city = "Berlin"
    }
    
}
