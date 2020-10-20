import Foundation

extension Ads {
    struct Rule {
        static let all = [
            Self(.css(.Class("card-ad")), .ecosia),
            .init(.css(.Class("card-productads")), .ecosia)]
        
        let action: Action
        let trigger: Trigger
        
        init(_ action: Action, _ trigger: Trigger) {
            self.action = action
            self.trigger = trigger
        }
    }
}
