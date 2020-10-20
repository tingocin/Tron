import Foundation

extension Ads {
    struct Rule: Hashable {
        static let all = Set([
                                Self(.css(.Class("card-ad")), .ecosia),
                                .init(.css(.Class("card-productads")), .ecosia),
                                .init(.css(.Id("taw")), .google),
                                .init(.css(.Id("rhs")), .google),
                                .init(.css(.Id("tadsb")), .google),
                                .init(.css(.Class("commercial")), .google),
                                .init(.block, .pubmatic),
                                .init(.block, .googlesyndication)])
        
        let action: Action
        let trigger: Trigger
        
        init(_ action: Action, _ trigger: Trigger) {
            self.action = action
            self.trigger = trigger
        }
        
        func hash(into: inout Hasher) {
            into.combine(action)
            into.combine(trigger)
        }
        
        static func == (lhs: Self, rhs: Self) -> Bool {
            lhs.action == rhs.action && lhs.trigger == rhs.trigger
        }
    }
}
