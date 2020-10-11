import XCTest
import Tron

final class AcceptTests: XCTestCase {
    private var tron: Tron!
    private let list = [
        "https://www.ecosia.org",
        "https://www.theguardian.com/email/form/footer/today-uk",
        "https://uk.reuters.com/"
    ]
    
    override func setUp() {
        tron = .init()
    }
    
    func test() {
        let expect = expectation(description: "")
        expect.expectedFulfillmentCount = list.count
        list.forEach {
            tron.accept(URL(string: $0)!) {
                XCTAssertTrue($0)
                XCTAssertEqual(.main, Thread.current)
                expect.fulfill()
            }
        }
        waitForExpectations(timeout: 1)
    }
}
