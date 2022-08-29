//
//  SecondModuleConcrete.swift
//  SecondModule
//
//  Created by Koray Yıldız on 28.08.22.
//

import Foundation
import SecondModuleInterface
import UIKit

public final class SecondModuleConcrete: SecondModuleProtocol {
    public init() { }
    public func controller() -> UIViewController {
        return SecondCoordinator().controller()
    }
}
