//
//  ViewController.swift
//  org.javacream.training.swift.people
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class CreatePersonController: UIViewController {

    @IBOutlet weak var LastnameInput: UITextField!
    @IBOutlet weak var FirstnameInput: UITextField!
    @IBOutlet weak var HeightInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //peopleModel = PeopleModel()
        
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
            do {
                try PeopleApplicationContext.peopleModel.savePerson(lastname: lastname, firstname: firstname, height: intHeight)
            }
            catch PeopleModelErrorEnum.save (let errorMessage){
                print("error saving person: \(errorMessage)")
            }
            catch let errorMessage {
                print("unknown error saving person: \(errorMessage)")
            }
            
        }else{
            print("non parsable height input")
        }
    }
    
}

