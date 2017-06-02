//
//  LocalPeopleModel.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 26.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

class LongRunningPeopleModel{
    private var people: Array<Person> = []
    
    func add(lastname: String, givenName: String){
        let newPerson = Person(lastname: lastname, givenName: givenName)
        people.append(newPerson)
        //sleep(5)
    }
    
    func addAsync(lastname: String, givenName: String, update: @escaping ()->Void){
/*        asyncTask (background: {
            let newPerson = Person(lastname: lastname, givenName: givenName)
            self.people.append(newPerson)
            sleep(5)}, update: update)
*/
        /*
        func b(){
            let newPerson = Person(lastname: lastname, givenName: givenName)
            self.people.append(newPerson)
            sleep(5)
        }
        
        func u(){
            update()
        }
        
        b ->- u
        */
        {() -> String in
                let newPerson = Person(lastname: lastname, givenName: givenName)
                self.people.append(newPerson)
                sleep(5)
                return "OK"
            } ->- {(result) -> Void in
                print(result)
                update()
        }
    }
    
    func get(_ index: Int) -> Person?{
        return people.count > index ? people[index] : nil
    }
    
    func dump(){
        print(people)
    }
    
}
