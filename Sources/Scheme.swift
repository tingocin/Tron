import Foundation

enum Scheme: String {
    case
    https,
    http
    
    static func schemeless(_ url: URL) -> String? {
        url.scheme.flatMap(Self.init(rawValue:)).map {
            .init(url.absoluteString.dropFirst($0.drop))
        }
    }
    
    private var drop: Int {
        switch self {
        case .https: return 8
        case .http: return 7
        }
    }
}
