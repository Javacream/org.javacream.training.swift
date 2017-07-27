//
//  PeopleListViewController.swift
//  org.javacream.training.ios.people.complex
//
//  Created by MR on 26.07.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import UIKit

class PeopleListViewController: UIViewController {
    
    @IBAction func writeToFileAction(_ sender: Any) {
        peopleController.savePeopleToFile()
    }
    @IBAction func deleteAllAction(_ sender: Any) {
        peopleController.deleteAll(update: updateDeleteAll)
    }
    @IBOutlet weak var output: UITextView!
    var peopleController = PeopleController.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func findAllAction(_ sender: Any) {
        peopleController.findAll(update: updateFindAll)
    }
    
    func updateFindAll(_ people: Array<Person>){
        //showConfirmDialog(message: "Found people: \(people)" , viewController: self)
        output.text = people.debugDescription
    }
    
    func updateDeleteAll(){
        //showConfirmDialog(message: "Found people: \(people)" , viewController: self)
        output.text = ""
    }
}

