//
//  ViewController.swift
//  org.javacream.training.ios.greeter
//
//  Created by Apple on 14.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class GreeterViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UILabel!


    @IBAction func doGreetAction(_ sender: Any) {
        GreeterApplicationContext.greeterController().asyncGreet(name: input.text!, update: updateGreeting)
    }
    
    func updateGreeting(greeting: String) -> Void{
        output.text = greeting
    }
}

