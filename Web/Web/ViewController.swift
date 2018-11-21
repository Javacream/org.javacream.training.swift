//
//  ViewController.swift
//  Web
//
//  Created by Apple on 21.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        externalHttp()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func externalHttp(){
        let url = URL(string: "http://10.44.3.240:8080/training/planets/pluto.html")
        let urlRequest = URLRequest(url: url!, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        self.webView.loadRequest(urlRequest)
        
    }
}

