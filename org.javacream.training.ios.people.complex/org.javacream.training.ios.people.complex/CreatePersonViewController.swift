//
//  FirstViewController.swift
//  org.javacream.training.ios.people.complex
//
//  Created by MR on 26.07.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import UIKit

class CreatePersonViewController: UIViewController {
       @IBOutlet weak var output: UITextView!
    @IBAction func loadFromServerAction(_ sender: Any) {
        peopleController.loadFromServer(update: updateCreatePerson)
    
    }
    @IBOutlet weak var lastnameInput: UITextField!
    @IBOutlet weak var givenNameInput: UITextField!
    var peopleController = PeopleController.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(CreatePersonViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func createPersonAction(_ sender: Any) {
        peopleController.add(lastname: lastnameInput.text!, givenName: givenNameInput.text!, update: updateCreatePerson)
    }
    
    func updateCreatePerson(_ person: Person){
        //showConfirmDialog(message: "Created Person: \(person)" , viewController: self)
        output.text = person.description
    }
    func updateCreatePerson(_ people: Array<Person>){
        //showConfirmDialog(message: "Created Person: \(person)" , viewController: self)
        output.text = people.description
    }
    
    
    //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
    //tap.cancelsTouchesInView = false
    
func dismissKeyboard() {
    //Causes the view (or one of its embedded text fields) to resign the first responder status.
    view.endEditing(true)
}
}

