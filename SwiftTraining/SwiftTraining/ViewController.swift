//
//  ViewController.swift
//  SwiftTraining
//
//  Created by Admin on 16.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let controller = PeopleController()
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

        let person = controller.create(lastname: lastname, firstname: firstname)
        person.height = Int(height)!
        print(person.sayHello())
        print(person.info())

        
    }
    @IBAction func executeReset(_ sender: UIButton) {
    lastnameInput.text = ""
    firstnameInput.text = ""
    heightInput.text = ""
    lastnameInput.becomeFirstResponder()
        
    }
    
    @IBAction func executeDump(_ sender: UIButton) {
        let lastname = lastnameInput.text
        if let output = lastname{
            print("Eingegebener Nachname: \(output)")

        }
        let firstname = firstnameInput.text
        if let output = firstname{
            print("Eingegebener Vorname: \(output)")
            
        }
        
        let heightAsString = heightInput.text
        if let output = heightAsString{
            print("Eingegebene Größe: \(output)")
            
        }

    }
    
}

