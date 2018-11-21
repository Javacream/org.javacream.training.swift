//
//  Utilities.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 21.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation
import UIKit

infix operator ->-

func ->- <R> (background: @escaping () -> R, update: @escaping (_: R) -> Void){
    DispatchQueue.global().async {
        let result = background()
        DispatchQueue.main.async {update(result)}
    }
}


func showConfirmDialog(title: String = "RESULT", message: String, viewController: UIViewController){
    let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
        //...
    })
    viewController.present(alert, animated: true)
}
