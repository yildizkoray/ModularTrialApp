import Foundation

public extension Bundle {
    
    static func find(name: String, for file: AnyClass) -> Bundle {
        let candidates = [
            Bundle.main.resourceURL,
            Bundle(for: file).resourceURL,
            Bundle.main.bundleURL,
        ]
        
        for candidate in candidates {
            let bundlePath = candidate?.appendingPathComponent(name + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        fatalError("unable to find bundle named \(name)")
    }
}
