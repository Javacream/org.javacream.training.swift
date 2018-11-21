//
//  EchoController.swift
//  Echo
//
//  Created by Apple on 21.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

class EchoController{
    //func echo(message: String) -> String : Signatur der Model-Funktion
    //1. Definiere den Aufruf der Model-Funktion in einer eigenen Funktion
    //2. "Schiebe" diese Funktion ->- update-Funktion
    func echo(message: String, update: @escaping (String) -> Void) -> Void{
        func echoLongRunning() -> String{
            let result = EchoModel.echo(message: message)
            return result
        }
    echoLongRunning ->- update
        
    }

}
