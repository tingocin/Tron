import Foundation

public struct Ads {
    public static let serialise = Rule.all.reduce(into: "[") {
        $0 += $0.count > 1 ? "," : ""
        $0 += "{" + .init(describing: $1.action) + "," + .init(describing: $1.trigger) + "}"
    } + "]"
}
