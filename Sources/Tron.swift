import Foundation
import Combine

public final class Tron {
    private let queue = DispatchQueue(label: "", qos: .utility)
    
    public init() { }
    
    public func policy(for url: URL, shield: Bool) -> Future<Policy, Never> {
        .init { [weak self] result in
            self?.queue.async {
                if Ignore(rawValue: url.absoluteString) != nil {
                    result(.success(.ignore))
                    return
                }
                if let schemeless = Scheme.schemeless(url) {
                    if shield {
                        let domain = schemeless.components(separatedBy: "/").first!
                        for item in domain.components(separatedBy: ".") {
                            guard Block(rawValue: item) == nil else {
                                result(.success(.block(domain)))
                                return
                            }
                            continue
                        }
                    }
                    result(.success(.allow))
                } else {
                    result(.success(.external))
                }
            }
        }
    }
}
