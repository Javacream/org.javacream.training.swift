//
//  PeopleController.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 13.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class PeopleController{
    var peopleModel: PeopleModel!
    func asyncSearchPeopleByLastname (lastname: String, update: @escaping (Array<String>) -> Void) -> Void{
        func background() ->Array<String>{
            return peopleModel.searchPeopleByLastname(lastname: lastname)
        }
        background ->- update
    }
    
    func asyncSavePerson(lastname: String, firstname:String, height: Int, update: @escaping (Person) -> Void, error: @escaping (Error) -> Void){
        
        func background() throws -> Person{
            return try PeopleApplicationContext.peopleModel.savePerson(lastname: lastname, firstname: firstname, height: height)
        }
        
        background ->>- (update, error)
    }
}
