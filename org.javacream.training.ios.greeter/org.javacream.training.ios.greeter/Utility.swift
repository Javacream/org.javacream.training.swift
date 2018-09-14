//
//  Utility.swift
//  org.javacream.training.ios.greeter
//
//  Created by Apple on 14.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
import Foundation
import UIKit


infix operator ->-

func ->- <R> (background: @escaping () -> R, update: @escaping (_: R) -> Void){
    DispatchQueue.global().async {
        let result = background()
        DispatchQueue.main.async {update(result)}
    }
}
