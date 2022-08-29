//
//  ModuleDependencyManager.swift
//  ModuleManager
//
//  Created by Koray Yıldız on 28.08.22.
//

import Foundation

public class ModuleDependencyManager {
    public static let shared = ModuleDependencyManager()
    
    private var modules = [String: Any]()

    fileprivate func key<T>(_ type: T.Type) -> String {
        return String(reflecting: type)
    }

    public func register<T>(_ type: T.Type, module: T?) {
        modules[key(type)] = module
    }

    public func get<T>(_ type: T.Type) -> T? {
        guard let module = modules[key(type)] as? T else {
            return nil
        }
        return module
    }
}
