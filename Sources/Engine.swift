import Foundation

public enum Engine: String {
    case
    ecosia,
    google
    
    var prefix: String {
        switch self {
        case .ecosia: return "https://www.ecosia.org/search?q="
        case .google: return "https://www.google.com/search?q="
        }
    }
    
    public func url(_ string: String) -> URL? {
        {
            $0.isEmpty ? nil : URL(string: $0).flatMap {
                $0.scheme == nil ? nil : $0
            } ?? URL(string: {
                $0.count > 1 && $0.last!.count > 1 && $0.first!.count > 1
            } ($0.components(separatedBy: ".")) ? "http://" + $0
            : $0.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed).map {
                prefix + $0
            } ?? "")
        } (string.trimmingCharacters(in: .whitespacesAndNewlines))
    }
}
