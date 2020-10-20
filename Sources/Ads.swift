import Foundation

public struct Ads {
    public static var serialise: String {
        Rule.all.reduce(into: "[") {
            $0 += "{" + .init(describing: $1.action) + "," + .init(describing: $1.trigger) + "},"
        } + "]"
    }
}
