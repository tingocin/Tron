import XCTest
import Tron

final class AcceptTests: XCTestCase {
    func test() {
        [
            "https://www.ecosia.org",
            "https://www.theguardian.com/email/form/footer/today-uk",
            "https://uk.reuters.com/"
        ].forEach {
            XCTAssertTrue(URL(string: $0)!.accept)
        }
    }
}
