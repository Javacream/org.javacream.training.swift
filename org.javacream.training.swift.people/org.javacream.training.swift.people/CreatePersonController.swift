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
    @IBOutlet weak var GenderInput: UITextField!
    
    @IBAction func doSave(_ sender: Any) {
        let lastname = LastnameInput.text!
        let firstname = FirstnameInput.text!
        let height = HeightInput.text!
        let gender = GenderInput.text!
        if let intHeight = Int(height){
            PeopleApplicationContext.peopleController.asyncSavePerson(lastname: lastname, firstname: firstname, height: intHeight, gender: gender, update: doSaveUpdate, error: doSaveError)
            
        }else{
            print("non parsable height input")
        }
    }
    
    func doSaveUpdate(person:Person) -> Void{
        print("finished saving with result \(person.sayHello())")
    }
    func doSaveError(error:Error) -> Void{
        print("finished saving with error \(error)")
    }

}

