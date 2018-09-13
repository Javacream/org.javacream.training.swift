//
//  PeopleApplicationContext.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 13.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class PeopleApplicationContext{
    static var peopleModel: PeopleModel!
    static var peopleController: PeopleController!

    static func initContext(){
        peopleModel = PeopleModel()
        peopleController = PeopleController()
        peopleController.peopleModel = peopleModel
}
    
}
