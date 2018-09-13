//
//  DemoModel.swift
//  org.javacream.training.swift.ui
//
//  Created by Apple on 13.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class DemoModel{
    var counter = 0
    func doDemo(param: String) -> String{
        sleep(3)
        counter = counter + 1
        return "Back from Demo \(counter) with param \(param)"
    }


    func doAnotherDemo(param: String, number: Int) -> Bool{
        sleep(3)
        print("\(param) \(number)")
        return number > counter
    }

}
