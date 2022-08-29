import UIKit
import FirstModuleInterface

public class FirstModuleConcrete: FirstModuleProtocol {
    public init() { }
    
    public func controller() -> UIViewController {
        return FirstCoordinator().controller()
    }
}
