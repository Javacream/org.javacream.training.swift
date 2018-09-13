//
//  ViewController.swift
//  org.javacream.training.swift.pageflow.programmatic
//
//  Created by Apple on 13.09.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pingpongView: UIView!
    @IBOutlet var pongSubView: UIView!
    @IBOutlet var pingSubView: UIView!

    @IBAction func doShowPong(_ sender: Any) {
        pingSubView.removeFromSuperview()
        pingpongView.addSubview(pongSubView)
    }
    @IBAction func doShowPing(_ sender: Any) {
        pongSubView.removeFromSuperview()
        pingpongView.addSubview(pingSubView)
    }
    
    
}

