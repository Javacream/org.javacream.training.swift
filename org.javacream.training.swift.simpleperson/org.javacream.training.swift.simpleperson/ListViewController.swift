//
//  ListViewController.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 20.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    let peopleController = PeopleController()
    @IBAction func dumpAction(_ sender: Any) {
        func dumpUpdate(people:String) -> Void{
            peopleListOutput.text = people
        }
        //let people = PeopleModel.dump()
        //peopleListOutput.text = people
        peopleController.dump(update: dumpUpdate)
    }
    
    
    
    @IBOutlet weak var peopleListOutput: UILabel!
 
    
}
