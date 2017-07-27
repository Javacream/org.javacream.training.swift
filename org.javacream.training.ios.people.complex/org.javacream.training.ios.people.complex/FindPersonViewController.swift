//
//  SecondViewController.swift
//  org.javacream.training.ios.people.complex
//
//  Created by MR on 26.07.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import UIKit

class FindPersonViewController: UIViewController {
    var peopleController = PeopleController.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var output: UITextView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findPersonAction(_ sender: Any) {
        peopleController.findByLastname(lastname: lastnameInput.text!, update: updateFindPerson)
    }

    @IBOutlet weak var lastnameInput: UITextField!
    
    func updateFindPerson(_ people: Array<Person>){
        //showConfirmDialog(message: "Found people: \(people)" , viewController: self)
        output.text = people.debugDescription

    }
}

