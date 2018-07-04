//
//  ViewController.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 23.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController {
    @IBOutlet weak var lastnameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var firstnameInput: UITextField!
    
    @IBAction func saveAction(_ sender: UIButton) {
        let lastname = lastnameInput.text!
        let firstname = firstnameInput.text!
        PeopleController.save(lastname: lastname, firstname: firstname, saveUpdate: saveUpdateView)
    }
    func saveUpdateView(p: Person) -> Void{
        print(p.info())
    }
    @IBAction func clearAction(_ sender: Any) {
        lastnameInput.text = ""
        firstnameInput.text = ""
    }
}
    


