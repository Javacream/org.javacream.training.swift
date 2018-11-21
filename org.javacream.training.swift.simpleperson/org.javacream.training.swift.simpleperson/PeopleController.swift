//
//  PeopleController.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 21.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class PeopleController{
    
    func save(lastname:String, firstname:String, height:Int, update: (Int) -> Void) -> Void{
            let generatedId = PeopleModel.save(lastname: lastname, firstname: firstname, height: height)
        update(generatedId)
    }
    
    func dump(update: (String) -> Void) -> Void{
        let stringResult = PeopleModel.dump()
        update(stringResult)
    }
    
    
    func search(id:Int, update: (Person?) -> Void) -> Void{
        let result = PeopleModel.search(id: id)
        update(result)
    }
    
    func deleteById(id: Int, update: (Bool) -> Void){
        let isDeleted = PeopleModel.deleteById(id: id)
        update(isDeleted)
    }
}
