import XCTest
@testable import Tron

final class TronTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Tron().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
