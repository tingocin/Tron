import XCTest
import Tron
import Combine

final class UnshieldTests: XCTestCase {
    private var tron: Tron!
    private var subs = Set<AnyCancellable>()
    private let listA =  [
        "about:blank",
        "about:srcdoc"
    ]
    
    private let listB = [
        "https://www.ecosia.org",
        "https://www.theguardian.com/email/form/footer/today-uk",
        "https://sourcepoint.theguardian.com/index.html?message_id=343252&consentUUID=4debba32-1827-4286-b168-cd0a6068f5f5&requestUUID=0a3ee8d3-cc2e-43b1-99ba-ceb02302f3e5&preload_message=true)",
        "https://tags.crwdcntrl.net/lt/shared/1/lt.iframe.html",
    ]
    
    private let listC = [
        "some://www.ecosia.org",
        "apps://www.theguardian.com/email/form/footer/today-uk",
        "sms://uk.reuters.com/"
    ]
    
    override func setUp() {
        tron = .init()
    }
    
    func testDeny() {
        let expect = expectation(description: "")
        expect.expectedFulfillmentCount = listA.count
        listA.forEach { url in
            tron.policy(for: URL(string: url)!, shield: false).sink {
                XCTAssertEqual(.deny, $0, url)
                expect.fulfill()
            }.store(in: &subs)
        }
        waitForExpectations(timeout: 1)
    }
    
    func testAllow() {
        let expect = expectation(description: "")
        expect.expectedFulfillmentCount = listB.count
        listB.forEach { url in
            tron.policy(for: URL(string: url)!, shield: false).sink {
                XCTAssertEqual(.allow, $0, url)
                expect.fulfill()
            }.store(in: &subs)
        }
        waitForExpectations(timeout: 1)
    }
    
    func testExternal() {
        let expect = expectation(description: "")
        expect.expectedFulfillmentCount = listC.count
        listC.forEach { url in
            tron.policy(for: URL(string: url)!, shield: false).sink {
                XCTAssertEqual(.external, $0, url)
                expect.fulfill()
            }.store(in: &subs)
        }
        waitForExpectations(timeout: 1)
    }
}
