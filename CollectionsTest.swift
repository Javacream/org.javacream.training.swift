import XCTest

class CollectionsTest: XCTestCase {

    func testCollections(){
        let list:Array<String> = ["A", "B", "C"]
        let range = 1...5
        let dictionary:Dictionary<Int, String> = [49 : "Germany", 39: "Italy"]
        
        
        for n in range{
            print (n)
        }
        
        let set:Set<String> = ["A", "B", "A"]
        let set2 = ["A", "B", "A"] as Set
        
        
        XCTAssertTrue(list.count == 3)
        XCTAssertEqual("C", list[2])
        XCTAssertEqual("Germany", dictionary[49]!)
        XCTAssertNil(dictionary[11234])
        XCTAssertTrue(set.count == 2)
        XCTAssertTrue(set2.count == 2)


        
    }
    
}
