//
//  ViewController.swift
//  Echo
//
//  Created by Apple on 21.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let echoController = EchoController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func echoAction(_ sender: Any) {
        //1. Auslesen der Oberfläche
        //2. Update-Funktion
        //3. Controller-Aufruf
        let echoMessage = echoInput.text!
        func updateEchoLabel(echoedMessage: String) -> Void{
            echoOutput.text = echoedMessage
        }
        echoController.echo(message: echoMessage, update: updateEchoLabel)
    }
    @IBOutlet weak var echoOutput: UILabel!
    
    @IBOutlet weak var echoInput: UITextField!
}

