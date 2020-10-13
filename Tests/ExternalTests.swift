import XCTest
import Tron
import Combine

final class ExternalTests: XCTestCase {
    private var tron: Tron!
    private var subs = Set<AnyCancellable>()
    private let list = [
        "some://www.ecosia.org",
        "apps://www.theguardian.com/email/form/footer/today-uk",
        "sms://uk.reuters.com/"
    ]
    
    override func setUp() {
        tron = .init()
    }
    
    func test() {
        let expect = expectation(description: "")
        expect.expectedFulfillmentCount = list.count
        list.forEach { url in
            tron.policy(for: URL(string: url)!, shield: true).sink {
                XCTAssertEqual(.external, $0, url)
                expect.fulfill()
            }.store(in: &subs)
        }
        waitForExpectations(timeout: 1)
    }
}
