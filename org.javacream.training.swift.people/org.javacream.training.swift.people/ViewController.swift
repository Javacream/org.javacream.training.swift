//
//  ViewController.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LastnameInput: UITextField!
    @IBOutlet weak var FirstnameInput: UITextField!
    @IBOutlet weak var HeightInput: UITextField!
    
    let peopleController = PeopleController()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func doDump(_ sender: Any) {
        peopleController.dump()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func doReset(_ sender: Any) {
        LastnameInput.text = ""
        FirstnameInput.text = ""
        HeightInput.text = ""
    }
    
    @IBAction func doSave(_ sender: Any) {
        let lastname = LastnameInput.text!
        let firstname = FirstnameInput.text!
        let height = HeightInput.text!
        if let intHeight = Int(height){
            peopleController.savePerson(lastname: lastname, firstname: firstname, height: intHeight)
        }else{
            print("non parsable height input")
        }
    }
    
}

