//
//  Utilities.swift
//  org.javacream.training.ios.people.swift
//
//  Created by Apple on 26.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation
import UIKit

func asyncTaskVoid (background: @escaping () -> Void, update: @escaping () -> Void){
    DispatchQueue.global().async {
        background()
        DispatchQueue.main.async {update()}
    }
}

//Aufruf: asyncTask<Person>(f1, f2)

func asyncTask <R> (background: @escaping () -> R, update: @escaping (_: R) -> Void){
    DispatchQueue.global().async {
        let result = background()
        DispatchQueue.main.async {update(result)}
    }
}


//Aufruf: f1 ->- f2
infix operator ->-

func ->- <R> (background: @escaping () -> R, update: @escaping (_: R) -> Void){
    DispatchQueue.global().async {
        let result = background()
        DispatchQueue.main.async {update(result)}
    }
}


func showConfirmDialog(title: String = "RESULT", message: String, viewController: ViewController){
    let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
        //...
    })
    viewController.present(alert, animated: true)
}
