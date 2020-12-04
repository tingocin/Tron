import Foundation

extension URL {
    public var deeplink: Bool {
        switch scheme {
        case nil, "", "http", "https": return false
        default: return true
        }
    }
}
