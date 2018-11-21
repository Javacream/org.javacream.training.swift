//
//  EchoModel.swift
//  Echo
//
//  Created by Apple on 21.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class EchoModel{
    static func echo(message: String) -> String{
        sleep(2)
        return "Echoing, \(message)"
    }
}
