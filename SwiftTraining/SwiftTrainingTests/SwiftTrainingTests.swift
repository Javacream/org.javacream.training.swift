//
//  SwiftTrainingTests.swift
//  SwiftTrainingTests
//
//  Created by Admin on 18.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import XCTest
@testable import SwiftTraining
class SwiftTrainingTests: XCTestCase {

    func template(){
        //1. Testdaten definieren
        //2. Erwartetes Ergebnis definieren
        //3. Die zu testende Funktionalität aufrufen
        //4. Mit XCTAssertxyz die Erwartung mit der Realität vergleichen
    }
    func testExample() {
        //1.
        let number1 = 20
        let number2 = 22
        
        //2.
        let expectedResult = 42
        
        //3.
        let result = number1 + number2
        
        //4.
        XCTAssertTrue(result == expectedResult)
    }
    
    func testTrivial(){
        XCTAssertTrue(true == true)
    }
    
    
    func testPerson(){
        //1.
        let lastname = "Sawitzki"
        let firstname = "Rainer"
        let height = 183
        let personId = 42
        
        //2.
        let expectedSayHelloResult = "Hello, my name is Rainer Sawitzki"
        
        
        //3.
        
        let p = Person(personId: personId, lastname: lastname, firstname: firstname)
        p.height = height
        let result = p.sayHello()
        //4.
        XCTAssertEqual(expectedSayHelloResult, result)
        XCTAssertEqual(lastname, p.lastname)
        XCTAssertEqual(firstname, p.firstname)
        XCTAssertEqual(height, p.height)



    }
    
    func testPeopleController(){
        let lastname = "Sawitzki"
        let firstname = "Rainer"
        let height = 183
        let expectedSayHelloResult = "Hello, my name is Rainer Sawitzki"
        let expectedInfoResult = "lastname=Sawitzki, firstname=Rainer, height=183"

        let pc = PeopleController()
        let p = pc.create(lastname: lastname, firstname: firstname)
        p.height = height
        let sayHelloResult = p.sayHello()
        XCTAssertEqual(expectedSayHelloResult, sayHelloResult)
        let infoResult = p.info()
        XCTAssertTrue(infoResult.hasSuffix(expectedInfoResult))

    }
    
    func testInheritance(){
        let lastname = "Sawitzki"
        let firstname = "Rainer"
        let height = 183
        let university = "LMU"
        let pc = PeopleController()
        let s = pc.createStudent(lastname: lastname, firstname: firstname, university: university)
        s.height = height
        //s.study()
    }
    
    func testPolymorphism(){
        let pc = PeopleController()
        let s = pc.createStudent(lastname: "Meier", firstname: "Hans", university: "TU")
        let p = pc.create(lastname: "Schneider", firstname: "Hans")
        s.height = 199
        p.height = 173
        print ("s: \(s.height), p: \(p.height)")
        printOut(p)
        printOut(s)
        print ("s: \(s.height), p: \(p.height)")
    }
    
    func printOut(_ p: Person){
        print(p.sayHello())
        p.height = 200
    }
    
    func testStruct(){
        let address = Address(city: "München", street: "Egal")
        XCTAssertEqual("München", address.city)
        printOut(address)
        XCTAssertEqual("München", address.city)
        
    }
    func printOut(_ a: Address){
        print(a.city)
        var temp = a
        temp.city = "Berlin"
    }

    func testMarriage(){
        let pc = PeopleController()
        let p1 = pc.createStudent(lastname: "Meier", firstname: "Hans", university: "TU")
        let p2 = pc.create(lastname: "Schneider", firstname: "Hans")
        let p3 = pc.create(lastname: "Metzger", firstname: "Hans")

        let success = p1.marry(p2)
        XCTAssertTrue(success)
        XCTAssertTrue(p2 === p1.partner! )
        XCTAssertTrue(p1 === p2.partner! )

        let marriageSuccess2 = p1.marry(p3)
        XCTAssertFalse(marriageSuccess2)

        let divorceSuccess = p3.divorce()
        XCTAssertFalse(divorceSuccess)

        let divorceSuccess2 = p2.divorce()
        XCTAssertTrue(divorceSuccess2)

        let marriageSuccess3 = p1.marry(p3)
        XCTAssertTrue(marriageSuccess3)


        
    }

    func testAddress(){
        let pc = PeopleController()
        let p1 = pc.create(lastname: "Schneider", firstname: "Hans")
        let p2 = pc.create(lastname: "Metzger", firstname: "Hans")
        let address = Address(city: "München", street: "Marienplatz")
        p1.address = address
        p2.address = address
        XCTAssertEqual("München", p1.address!.city)
        XCTAssertEqual("München", p2.address!.city)
        p1.address!.city = "Stuttgart"
        p1.address!.street = "Schlossplatz"
        XCTAssertEqual("Stuttgart", p1.address!.city)
        XCTAssertEqual("München", p2.address!.city)

    }
}
