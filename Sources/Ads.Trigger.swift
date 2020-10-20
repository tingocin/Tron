import Foundation

extension Ads {
    enum Trigger: String, CustomStringConvertible {
        case
        ecosia = "https://www.ecosia.org"
        
        var description: String {
            """
"trigger": {
"url-filter": "\(rawValue)"
}
"""
        }
    }
}
