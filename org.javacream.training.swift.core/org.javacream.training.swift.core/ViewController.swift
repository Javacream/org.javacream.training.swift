//
//  ViewController.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func helloWorld(_ sender: Any) {
        print("Hello World!")
    }
    @IBAction func doFunctions(_ sender: Any) {
        functions()
    }


    @IBAction func doOperatorsDemo(_ sender: Any) {
        operators()

    }
    @IBAction func doControllStructures(_ sender: Any) {
        controllStructures()
    }
    
    @IBAction func doFunctionsAsObjects(_ sender: Any) {
        functionsAsObjects()
    }

    @IBAction func doTransformerExample(_ sender: Any) {
        transformerExample()
    }

    @IBAction func doReferencesAndValues(_ sender: UIButton) {
        referencesAndValues()
    }
    
    @IBAction func doClosures(_ sender: UIButton) {
        closure()
    }
    
    

    @IBAction func doVarsAndTypes(_ sender: UIButton) {
        varsAndTypes()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

