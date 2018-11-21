//
//  PeopleController.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 21.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class PeopleController{
    
    func save(lastname:String, firstname:String, height:Int, update: @escaping (Int) -> Void) -> Void{
        func longRunning() -> Int{
            let generatedId = PeopleModel.save(lastname: lastname, firstname: firstname, height: height)
            return generatedId
        }
        longRunning ->- update
    }
    
    func dump(update: @escaping (String) -> Void) -> Void{
        func longRunningDump() -> String{
        let stringResult = PeopleModel.dump()
            return stringResult
        }
        longRunningDump ->- update
    }
    
    
    func search(id:Int, update: @escaping (Person?) -> Void) -> Void{
        func longRunningSearch() -> Person?{
            let result = PeopleModel.search(id: id)
            return result
        }
        
        longRunningSearch ->- update
    }
    
    func deleteById(id: Int, update: @escaping (Bool) -> Void){
        func f () ->Bool{
            let isDeleted = PeopleModel.deleteById(id: id)
            return isDeleted
        }
        f ->- update
    }
}
