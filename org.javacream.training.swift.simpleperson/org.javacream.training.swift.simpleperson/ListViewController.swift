//
//  ListViewController.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 20.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    @IBAction func dumpAction(_ sender: Any) {
        let people = PeopleModel.dump()
        peopleListOutput.text = people
    }
    @IBOutlet weak var peopleListOutput: UILabel!
    
}
