//
//  SearchViewController.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 20.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var personResult: UILabel!
    @IBAction func searchAction(_ sender: Any) {
        let id = Int(idInput.text!)!
        let p = PeopleModel.search(id: id)
        if let person = p {
            personResult.text = person.info()
        }else{
            personResult.text = "\(id) not found"
        }
    }
    @IBOutlet weak var idInput: UITextField!
}
