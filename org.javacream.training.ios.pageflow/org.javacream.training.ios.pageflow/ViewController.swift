//
//  ViewController.swift
//  org.javacream.training.ios.pageflow
//
//  Created by MR on 26.07.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func demo(){
        func printOutFunc(output:String) -> Void{
            print(output)
        }
        let pOF = {(s:String) in print(s)}
        let names:Array<String> = ["Meier", "Sawitzki", "Müller", "Metzger"]
        names.forEach(pOF)

        let result = names.filter({(e:String) in return e.starts(with: "M")})
            
            
        let result2 :Array<Int> = result.map({(e:String) in return e.count})
            
        result2.forEach({(element:Int) in print(element)})
    }


}

