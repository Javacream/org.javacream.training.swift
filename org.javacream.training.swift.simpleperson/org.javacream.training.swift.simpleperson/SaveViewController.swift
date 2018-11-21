//
//  ViewController.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 20.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController {

    let peopleController = PeopleController()
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var lastnameInput: UITextField!
    @IBOutlet weak var firstnameInput: UITextField!

    //let peopleModel = PeopleModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clearAction(_ sender: Any) {
        heightInput.text = ""
        firstnameInput.text = ""
        lastnameInput.text = ""
    }
    @IBAction func saveAction(_ sender: Any) {
        
        let lastname = lastnameInput.text!
        let firstname = firstnameInput.text!
        let height = Int(heightInput.text!)!
        func saveUpdate(id: Int) -> Void{
            showConfirmDialog(message: "GeneratedId: \(id)", viewController: self)
        }
        
        peopleController.save(lastname: lastname, firstname: firstname, height: height, update: saveUpdate)
    }
    
}

