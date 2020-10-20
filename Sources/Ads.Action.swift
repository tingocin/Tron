import Foundation

extension Ads {
    enum Action: CustomStringConvertible {
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
    }
}
