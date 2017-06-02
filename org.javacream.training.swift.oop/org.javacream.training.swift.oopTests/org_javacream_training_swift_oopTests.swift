//
//  org_javacream_training_swift_oopTests.swift
//  org.javacream.training.swift.oopTests
//
//  Created by Apple on 25.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import XCTest
@testable import org_javacream_training_swift_oop

class org_javacream_training_swift_oopTests: XCTestCase {
    var pc: PeopleController!
    override func setUp() {
        super.setUp()
        pc = PeopleController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        pc.add(lastname: "Sawitzki", givenName: "Rainer")
        pc.add(lastname: "Mustermann", givenName: "Hans")
        pc.add(lastname: "Fabricius", givenName: "Carola")
        
        let p1 = pc.get(0)
        XCTAssertEqual("Sawitzki", p1!.Lastname)
    }
    
    func testExampleSequence() {
        personTest()
    }
}
