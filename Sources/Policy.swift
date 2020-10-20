import Foundation

public enum Policy {
    case
    allow,
    ignore,
    external,
    block(String)
}
