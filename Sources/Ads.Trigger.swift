import Foundation

extension Ads {
    enum Trigger: String, CustomStringConvertible {
        case
        ecosia = "https://www.ecosia.org",
        google = "https://www.google.com",
        pubmatic = "https://ads.pubmatic.com",
        googlesyndication = ".*googlesyndication.com"
        
        var description: String {
            """
"trigger": {
"url-filter": "\(rawValue)"
}
"""
        }
    }
}
