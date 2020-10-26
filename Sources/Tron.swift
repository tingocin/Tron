import Foundation
import Combine

public final class Tron {
    private let queue = DispatchQueue(label: "", qos: .utility)
    
    public init() { }
    
    public func policy(for url: URL, shield: Bool) -> Future<Policy, Never> {
        .init { [weak self] result in
            self?.queue.async {
                result(.success(
                        url.scheme.flatMap(Ignore.init(rawValue:)).map { _ in
                            .ignore
                        }
                        ?? Scheme.schemeless(url).map {
                            if shield {
                                let domain = $0.components(separatedBy: "/").first!
                                for item in domain.components(separatedBy: ".") {
                                    guard Block(rawValue: item) == nil else { return .block(domain) }
                                    continue
                                }
                            }
                            return .allow
                        }
                        ?? .external))
            }
        }
    }
}
