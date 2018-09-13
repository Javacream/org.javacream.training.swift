//
//  DemoController.swift
//  org.javacream.training.swift.ui
//
//  Created by Apple on 13.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class DemoController{
    let demoModel = DemoApplicationContext.demoModel
    
    func asyncDoDemo (input: String, update: @escaping (String) -> Void) -> Void{
        func background() ->String{
                return demoModel.doDemo(param: input)
        }
        background ->- update
    }
    
    func asyncDoAnotherDemo(input: String, number: Int, update: @escaping (Bool) -> Void) -> Void{
        func background() ->Bool{
            return demoModel.doAnotherDemo(param: input, number: number)
        }
        background ->- update

    }
}



