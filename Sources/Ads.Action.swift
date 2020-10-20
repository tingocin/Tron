import Foundation

extension Ads {
    enum Action: CustomStringConvertible, Hashable {
        case
        css(Selector),
        block
        
        var description: String {
            """
"action": {
\({
    switch self {
    case .css(let selector): return """
"type": "css-display-none",
"selector": "div[\(String(describing: selector))]"
"""
    case .block: return """
"type": "block"
"""
    }
} () as String)
}
"""
        }
        
        func hash(into: inout Hasher) {
            into.combine(description)
        }
        
        static func == (lhs: Self, rhs: Self) -> Bool {
            lhs.description == rhs.description
        }
    }
}
