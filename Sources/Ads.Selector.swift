import Foundation

extension Ads {
    class Selector: CustomStringConvertible {
        let value: String
        
        init(_ value: String) {
            self.value = value
        }
        
        final class Id: Selector {
            override var description: String {
                "id='\(value)'"
            }
        }
        
        final class Class: Selector {
            override var description: String {
                "class*='\(value)'"
            }
        }
        
        var description: String { fatalError() }
    }
}
