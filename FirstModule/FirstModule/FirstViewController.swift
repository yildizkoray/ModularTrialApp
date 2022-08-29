import UIKit
import Additions
import SecondModuleInterface
import ModuleManager

class FirstViewController: UIViewController {
    
    private let secondModule: SecondModuleProtocol = ModuleDependencyManager.shared.get(SecondModuleProtocol.self)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.present(self.secondModule.controller(), animated: true, completion: nil)
        }
    }
}


final class FirstCoordinator {
    
    func controller() -> UIViewController {
        let storyboard = UIStoryboard(name: "FirstStoryboard", bundle: .find(name: "FirstModuleResources", for: Self.self))
        let controller = storyboard.instantiateViewController(withIdentifier: "FirstVC")
        return controller
    }
}
