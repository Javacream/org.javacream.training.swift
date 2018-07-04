
import UIKit

class DumpViewController: UIViewController {
    @IBAction func doDump(_ sender: Any) {
        PeopleController.dump(dumpUpdate: dumpUpdateView)
    }
    func dumpUpdateView(){
        print("dump completed...")
    }
}
