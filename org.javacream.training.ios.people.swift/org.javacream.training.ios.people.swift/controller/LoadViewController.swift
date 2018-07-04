//
//  LoadViewController.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 04.07.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class LoadViewController: UIViewController {

    @IBAction func doLoad(_ sender: Any) {
        PeopleController.load(loadUpdate: loadUpdate)
    }

    func loadUpdate(result: Array<Person>){
        print("Loaded \(result.count) people")
    }
}
