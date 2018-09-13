//
//  PeopleControllerTests.swift
//  org.javacream.training.swift.peopleTests
//
//  Created by Apple on 12.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import XCTest
@testable import org_javacream_training_swift_people
class PeopleModelTests: XCTestCase {
    var peopleModel:PeopleModel!
    private static let VALID_LASTNAME = "Test-Lastname"
    private static let VALID_FIRSTNAME = "Test-Firstname"
    private static let VALID_HEIGHT = 176
    
    private static let INVALID_LASTNAME = "T"
    private static let INVALID_FIRSTNAME = "T"
    private static let INVALID_HEIGHT_LOW = 24
    private static let INVALID_HEIGHT_HIGH = 251
    
    
    override func setUp() {
        peopleModel = PeopleModel()
    }
    
    func testSearchPerson(){
        try! peopleModel.savePerson(lastname: PeopleModelTests.VALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.VALID_HEIGHT)

        let found = peopleModel.searchPeopleByLastname(lastname: PeopleModelTests.VALID_LASTNAME)
        XCTAssertTrue(found.count == 1)
        try! peopleModel.savePerson(lastname: PeopleModelTests.VALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.VALID_HEIGHT)
        let found2 = peopleModel.searchPeopleByLastname(lastname: "Lastname")
        XCTAssertTrue(found2.count == 2)
    }
    func testSearchPersonNotFound(){
        try! peopleModel.savePerson(lastname: PeopleModelTests.VALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.VALID_HEIGHT)
        
        let found = peopleModel.searchPeopleByLastname(lastname: "NO_LASTNAME")
        XCTAssertTrue(found.count == 0)
    }
    func testSavePerson() {
        
        try! peopleModel.savePerson(lastname: PeopleModelTests.VALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.VALID_HEIGHT)
        XCTAssertTrue(peopleModel.people.count == 1)
        try! peopleModel.savePerson(lastname: PeopleModelTests.VALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.VALID_HEIGHT)
        XCTAssertTrue(peopleModel.people.count == 2)
        
    }
    
    func testSavePersonIllegalLastname() {
        XCTAssertThrowsError(try peopleModel.savePerson(lastname: PeopleModelTests.INVALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.VALID_HEIGHT))
        
    }
    
    func testSavePersonIllegalLastnameDetailed() {
        XCTAssertThrowsError(try peopleModel.savePerson(lastname: PeopleModelTests.INVALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.VALID_HEIGHT), "illegal lastname",
                             {(error) in
                                let saveError:PeopleModelErrorEnum = error as! PeopleModelErrorEnum
                                switch saveError {
                                case .save(let message):
                                    print("saveError: \(message)")
                                
                                }
                                //print(saveError.description)
        
        
    }
        )
        
    }
    
    func testSavePersonIllegalFirstname() {
        XCTAssertThrowsError(try peopleModel.savePerson(lastname: PeopleModelTests.VALID_LASTNAME, firstname: PeopleModelTests.INVALID_FIRSTNAME, height: PeopleModelTests.VALID_HEIGHT))
        
    }
    func testSavePersonLowHeight() {
        XCTAssertThrowsError(try peopleModel.savePerson(lastname: PeopleModelTests.VALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.INVALID_HEIGHT_LOW))
        
    }
    func testSavePersonHighHeight() {
        XCTAssertThrowsError(try peopleModel.savePerson(lastname: PeopleModelTests.VALID_LASTNAME, firstname: PeopleModelTests.VALID_FIRSTNAME, height: PeopleModelTests.INVALID_HEIGHT_HIGH))
        
    }
    
    
}
