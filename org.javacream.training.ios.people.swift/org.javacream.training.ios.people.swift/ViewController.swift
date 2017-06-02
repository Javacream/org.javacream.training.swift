//
//  ViewController.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 23.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //var localPeopleModel: LocalPeopleModel!
    var longRunningPeopleModel: LongRunningPeopleModel!
    var httpPeopleController: HttpPeopleController!
    @IBAction func dump(_ sender: UIButton) {
        //localPeopleModel.dump()
        longRunningPeopleModel.dump()
    }
    @IBOutlet weak var lastnameInput: UITextField!
    
    @IBOutlet weak var givenNameInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        //localPeopleModel = LocalPeopleModel()
        longRunningPeopleModel = LongRunningPeopleModel()
        httpPeopleController = HttpPeopleController()
    }

    @IBAction func doLoad(_ sender: UIButton) {
        httpPeopleController.load ->- loadUpdate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveAction(_ sender: UIButton) {
        let lastname = lastnameInput.text
        let givenName = givenNameInput.text
        
        if let l = lastname, let g = givenName {
         //localPeopleModel.add(lastname: l, givenName: g)
            longRunningPeopleModel.addAsync(lastname: l, givenName: g, update: addUpdate)
        }
        
    }
    
    func addUpdate(){
        showConfirmDialog(message: "person created and saved", viewController: self)
    }
    
    func loadUpdate(people: Array<(String, String)>){
        for element in people{
            longRunningPeopleModel.add(lastname: element.0, givenName: element.1)
        }
        showConfirmDialog(message: "loaded \(people.count) people", viewController: self)
        
    }

}

