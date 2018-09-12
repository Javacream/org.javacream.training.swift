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
    
    func testProveArraysAreStructs(){
        let list1 = ["A", "B"]
        var list2 = list1 //let declares an immutable list!
        list2.append("C")
        XCTAssertTrue(list1.count == 2)
        XCTAssertTrue(list2.count == 3)

        func changeWithValue(toChange: Array<String>){
            //toChange.append("D")
        }

        func changeWithReference(toChange: inout Array<String>){
            toChange.append("D")
        }
        changeWithValue(toChange: list1)
        changeWithValue(toChange: list2)
        changeWithReference(toChange: &list2)
        XCTAssertTrue(list2.count == 4)

        
    }

    func testIteration(){
        let list = ["Z", "AAA", "B", "A2", "C", "A147B"]
        //Nicht verwenden
        for element in list{
            print("from for in : \(element)")
        }
        
        //OK, aber aufwändig
        func printOut(_ element:String) -> Void{
            print("from printOut: \(element)")

        }
        
        list.forEach(printOut)
        
        //OK mit Lambda, {(params) in {sequence}}
        list.forEach({(element) in print("from lambda: \(element)")})

        //FILTERING, BITTE SO NIE MACHEN!!!!!
        var onlyStartingWithA = [] as Array<String>
        for element in list{
            if (element.starts(with: "A")){
                onlyStartingWithA.append(element)
            }
        }
        for element in onlyStartingWithA{
            print(element)
        }
        
        //So wirds gemacht:
        
        list.filter({(element) in element.starts(with: "A")}).forEach({(element) in print("filtered from lambda: \(element)")})

        let filteredList = list.filter({(element) in element.starts(with: "A")})
        filteredList.forEach({(element) in print("filtered from lambda: \(element)")})

        list.filter({(element) in element.starts(with: "A")}).sorted(by: {(e1, e2) in e1.count < e2.count}).forEach({(element) in print("filtered and sorted from lambda: \(element)")})


        list.filter({(element) in element.starts(with: "A")}).sorted(by: {(e1, e2) in e1.count < e2.count}).map({(e) in e.count}).forEach({(element) in print("filtered and sorted from lambda: \(element)")})

    }
}
