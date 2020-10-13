import Foundation

public final class Tron {
    private let queue = DispatchQueue(label: "", qos: .utility)
    
    public init() { }
    
    public func policy(for url: URL, result: @escaping (Policy) -> Void) {
        queue.async {
            let url = url.absoluteString
            if Self.equals.contains(url) {
                DispatchQueue.main.async { result(.deny) }
                return
            }
            if let schemeless = url.hasPrefix("https") ? url.dropFirst(8) :
                url.hasPrefix("http") ? url.dropFirst(7) : nil {
                for item in schemeless.components(separatedBy: "/").first!.components(separatedBy: ".") {
                    guard Self.partial.contains(item) else { continue }
                    DispatchQueue.main.async { result(.deny) }
                    return
                }
            }
            DispatchQueue.main.async { result(.allow) }
        }
    }
}
