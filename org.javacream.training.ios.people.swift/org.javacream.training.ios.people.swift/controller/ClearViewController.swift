
import UIKit

class ClearViewController: UIViewController {

    @IBAction func doClear(_ sender: Any) {
        PeopleController.clear(clearUpdate: clearUpdateView)
    }
    
    func clearUpdateView(count: Int) -> Void{
        print ("clear completed, removed \(count) people")
    }
    
}
