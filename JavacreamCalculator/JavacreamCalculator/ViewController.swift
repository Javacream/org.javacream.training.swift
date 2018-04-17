//
//  ViewController.swift
//  JavacreamCalculator
//
//  Created by Admin on 17.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var areaOutput: UILabel!
    
    @IBOutlet weak var radiusInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(_ sender: Any) {
        let radiusAsString = radiusInput.text
        let radius = Double(radiusAsString!)
        let area = circleArea(radius)
        areaOutput.text = String(area)
        
    }
    
}

