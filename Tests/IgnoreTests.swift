import XCTest
import Tron
import Combine

final class IgnoreTests: XCTestCase {
    private var tron: Tron!
    private var subs = Set<AnyCancellable>()
    private let list =  [
        "about:blank",
        "about:srcdoc",
        "data:text/html;charset=utf-8;base64,PGltZyBzcmM9Imh0dHBzOi8vd3d3LmJldDM2NS5jb20vZmF2aWNvbi5pY28iPg=="
    ]
    
    override func setUp() {
        tron = .init()
    }
    
    func test() {
        let expect = expectation(description: "")
        expect.expectedFulfillmentCount = list.count
        list.forEach { url in
            tron.policy(for: URL(string: url)!, shield: true).sink {
                if case .ignore = $0 {
                    expect.fulfill()
                } else {
                    XCTFail("\($0): \(url)")
                }
            }.store(in: &subs)
        }
        waitForExpectations(timeout: 1)
    }
}
