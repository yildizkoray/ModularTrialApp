//
//  SecondViewController.swift
//  SecondModule
//
//  Created by Koray Yıldız on 28.08.22.
//

import UIKit
import Additions

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

final class SecondCoordinator {
    init() { }
    
    func controller() -> UIViewController {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: .find(name: "SecondModuleResources", for: Self.self))
        let controller = storyboard.instantiateViewController(withIdentifier: "SecondVC")
        return controller
    }
}
