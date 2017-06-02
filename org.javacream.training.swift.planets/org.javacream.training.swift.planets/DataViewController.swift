//
//  DataViewController.swift
//  org.javacream.training.swift.planets
//
//  Created by Apple on 26.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
        externalHttp()
    }

    func externalHttp(){
        self.dataLabel.text = dataObject
        self.webView.loadHTMLString("<img src='http://10.28.6.8:8080/training/data/planets/\(dataObject).jpg'></img>" , baseURL: nil)
    }
}

