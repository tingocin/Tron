import Foundation

public struct Cookies {
    public static let rule = """
[
{
    "action": {
        "type": "block-cookies"
    },
    "trigger": {
        "url-filter": ".*"
    }
}
]
"""
}
