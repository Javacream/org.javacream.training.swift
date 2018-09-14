//
//  org_javacream_training_ios_greeterTests.swift
//  org.javacream.training.ios.greeterTests
//
//  Created by Apple on 14.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import XCTest
@testable import org_javacream_training_ios_greeter

class GreeterTests: XCTestCase {
    
    func testGreeter() {
        let name = "Sawitzki"
        let expectedGreeting = "Hello Sawitzki"
        let greeterModel = GreeterModel()
        let greeting = greeterModel.greet(name: name)
        XCTAssertEqual(expectedGreeting, greeting)
    }
    
    
}
