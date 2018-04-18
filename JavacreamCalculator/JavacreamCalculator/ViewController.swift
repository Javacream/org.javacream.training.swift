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
    @IBAction func doBookDemo(_ sender: Any) {
    bookDemo()}
    

    @IBOutlet weak var radiusInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func doCalculateAverage(_ sender: Any) {
        let integers = [13, 2, -25, 81]
        let avg = average(numbers: integers)
        log(indent: 2, message: String(avg))

    }
    @IBAction func doCalculateSum(_ sender: Any) {
        let integers = [1, 42, -5, 8]
        let sum = calculateSum(numbers: integers)
        log(indent: 2, message: String(sum))
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

