//
//  SearchPersonController.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 13.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class SearchPersonController: UIViewController {
    @IBOutlet weak var lastnameInput: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func doSearchPeopleByLastname(_ sender: Any) {
        let lastname = lastnameInput.text!
        let people = peopleModel.searchPeopleByLastname(lastname: lastname)
        let peopleNames = people.reduce("", {(result, name) in "\(result) \(name) \n"})
        outputLabel.text = peopleNames
        
    }
    var peopleModel:PeopleModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        peopleModel = PeopleApplicationContext.peopleModel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
