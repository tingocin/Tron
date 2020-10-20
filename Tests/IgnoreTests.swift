import XCTest
import Tron
import Combine

final class IgnoreTests: XCTestCase {
    private var tron: Tron!
    private var subs = Set<AnyCancellable>()
    private let list =  [
        "about:blank",
        "about:srcdoc"
    ]
    
    override func setUp() {
        tron = .init()
    }
    
    func test() {
        let expect = expectation(description: "")
        expect.expectedFulfillmentCount = list.count
        list.forEach { url in
            tron.policy(for: URL(string: url)!, shield: true).sink {
                XCTAssertEqual(.ignore, $0, url)
                expect.fulfill()
            }.store(in: &subs)
        }
        waitForExpectations(timeout: 1)
    }
}
