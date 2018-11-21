//
//  DeleteViewController.swift
//  org.javacream.training.swift.simpleperson
//
//  Created by Apple on 21.11.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import UIKit

class DeleteViewController: UIViewController {
    let peopleController = PeopleController()
    @IBAction func deleteAction(_ sender: Any) {
        let idToDelete = Int(idToDeleteInput.text!)!
        func deleteUpdate(isDeleted: Bool) -> Void{
            print("isDeleted: \(isDeleted)")
        }
        
        peopleController.deleteById(id: idToDelete, update: deleteUpdate)
    
    }
    @IBOutlet weak var idToDeleteInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
