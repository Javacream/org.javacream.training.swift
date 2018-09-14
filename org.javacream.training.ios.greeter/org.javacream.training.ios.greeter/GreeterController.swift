//
//  GreeterController.swift
//  org.javacream.training.ios.greeter
//
//  Created by Apple on 14.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class GreeterController{
    func asyncGreet(name:String, update: @escaping (String) -> Void){
        func callModel() -> String {
            return GreeterApplicationContext.greeterModel().greet(name: name)
        }
        callModel ->- update
    }
}
