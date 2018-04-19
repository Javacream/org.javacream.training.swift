//
//  ViewController.swift
//  SwiftTraining
//
//  Created by Admin on 16.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static let controller = PeopleController()
    @IBOutlet weak var lastnameInput: UITextField!
    
    @IBOutlet weak var firstnameInput: UITextField!
    
    @IBOutlet weak var heightInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doSave(_ sender: UIButton) {
        let lastname = lastnameInput.text!
        let firstname = firstnameInput.text!
        let height = heightInput.text!

        let person = ViewController.controller.create(lastname: lastname, firstname: firstname)
        person.height = Int(height)!
        //print(person.sayHello())
        //print(person.info())

        
    }
    @IBAction func executeReset(_ sender: UIButton) {
    lastnameInput.text = ""
    firstnameInput.text = ""
    heightInput.text = ""
    lastnameInput.becomeFirstResponder()
        
    }
    
    @IBAction func executeDump(_ sender: UIButton) {
        let allPeople = ViewController.controller.findAll()
        for person in allPeople {
            print(person.sayHello())
        }
    }
    
}

