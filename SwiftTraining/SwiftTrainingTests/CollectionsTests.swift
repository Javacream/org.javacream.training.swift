//
//  CollectionsTests.swift
//  SwiftTrainingTests
//
//  Created by Admin on 19.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

import XCTest
@testable import SwiftTraining
class CollectionsTests: XCTestCase {

    func testArrayCopy(){
        var names: Array<String> = []
        names.append("Hugo")
        names.append("Emil")
        XCTAssertEqual(2, names.count)
        var names2 = names
        XCTAssertEqual(2, names2.count)
        names.append("Fritz")
        XCTAssertEqual(3, names.count)
        XCTAssertEqual(2, names2.count) //Array, Dictionary und Set sind Swift-structs! Keine Klassen!
    }


    func testArray(){
        var names: Array<String> = []
        names.append("Hugo")
        names.append("Emil")
        names.append("Hugo")
        XCTAssertEqual(3, names.count)
        for element:String in names {
            print(element)
        }
        XCTAssertEqual("Emil", names[1])
    }
    func testSet(){
        var names: Set<String> = []
        names.insert("Hugo")
        names.insert("Emil")
        names.insert("Hugo")
        XCTAssertEqual(2, names.count)
        for element:String in names {
            print(element)
        }
    }
    func testDictionary(){
        var names: Dictionary<String, String> = [:]
        names["Hugo"] = "Der Mensch Hugo"
        names["Emil"] = "Der Mensch Emil"
        names["Hugo"] = "Der aktualisierte Mensch Hugo"
        XCTAssertEqual(2, names.count)
        for element:String in names.keys {
            print(element)
        }
        for element:String in names.values {
            print(element)
        }
        for element:String in names.keys {
            print("Key: \(element), value=\(names[element]!)")
        }
    }

}

