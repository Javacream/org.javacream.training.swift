//
//  ViewController.swift
//  org.javacream.training.swift.ui
//
//  Created by Apple on 13.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let controller = DemoController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func doAnotherDemoAction(_ sender: Any) {
        let inputString = input.text!
        let numberAsString = numberInput.text!
        
        let number = Int(numberAsString)!
        controller.asyncDoAnotherDemo(input: inputString, number: number, update: doAnotherDemoUpdate)
    }
    
    func doAnotherDemoUpdate(state: Bool)->Void{
        if (state){
            output.text = "TRUESTATE"
        }else{
            output.text = "FALSE STATE"
        }
    }
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    @IBAction func doDemoAction(_ sender: Any) {
        
        //TODO: Ich brauche eine Funktion mit der Signatur:
        //((String) - Void) -> Void
        //output.text = DemoApplicationContext.demoModel.doDemo()
        
        let inputString = input.text!
        controller.asyncDoDemo(input: inputString, update: doDemoUpdate)
    }
    
    func doDemoUpdate(result:String){
        output.text = result
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

