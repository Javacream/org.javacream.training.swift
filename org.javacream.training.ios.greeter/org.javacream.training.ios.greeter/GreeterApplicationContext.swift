//
//  GreeterApplicationContext.swift
//  org.javacream.training.ios.greeter
//
//  Created by Apple on 14.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class GreeterApplicationContext{
    static var _greeterModel:GreeterModel?
    static var _greeterController:GreeterController?
    static func greeterModel() -> GreeterModel{
        if let g = _greeterModel{
            return g
        }else{
            _greeterModel = GreeterModel()
            return _greeterModel!
        }
    }
    static func greeterController() -> GreeterController{
        if let g = _greeterController{
            return g
        }else{
            _greeterController = GreeterController()
            return _greeterController!
        }
    }

}
