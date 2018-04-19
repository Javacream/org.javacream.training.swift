//
//  SearchPersonViewController.swift
//  SwiftTraining
//
//  Created by Admin on 19.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class SearchPersonViewController: UIViewController {
    
    @IBOutlet weak var personIdInput: UITextField!
    @IBOutlet weak var personResult: UILabel!
    @IBAction func doSearch(_ sender: Any) {
        let idString = personIdInput.text!
        if let id = Int(idString){
            if let person = ViewController.controller.findById(id: id){
                personResult.text = person.info()
            }else{
                personResult.text = "No person found for id \(id)!"
            }
        }
        else{
            personResult.text = "No searchable input \(idString)!"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
