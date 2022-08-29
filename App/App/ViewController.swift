import UIKit
import FirstModuleInterface
import ModuleManager

class ViewController: UIViewController {
    
    let firstModule: FirstModuleProtocol = ModuleDependencyManager.shared.get(FirstModuleProtocol.self)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.present(self.firstModule.controller(), animated: true, completion: nil)
        }
    }
}

