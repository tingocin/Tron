import XCTest
import Tron

final class EngineTests: XCTestCase {
    func testEmpty() {
        XCTAssertNil(Engine.ecosia.url(""))
        XCTAssertNil(Engine.ecosia.url(" "))
        XCTAssertNil(Engine.ecosia.url("\n"))
    }
    
    func testSearch() {
        XCTAssertEqual("https://www.ecosia.org/search?q=hello%20world", Engine.ecosia.url("hello world")?.absoluteString)
        XCTAssertEqual("https://www.google.com/search?q=hello%20world", Engine.google.url("hello world")?.absoluteString)
    }
    
    func testURL() {
        XCTAssertEqual("https://github.com", Engine.ecosia.url("https://github.com")?.absoluteString)
    }
    
    func testPartialURL() {
        XCTAssertEqual("http://github.com", Engine.ecosia.url("github.com")?.absoluteString)
    }
    
    func testDeeplinks() {
        XCTAssertEqual("itms-services://?action=purchaseIntent&bundleId=incognit&productIdentifier=incognit.plus",
                       Engine.ecosia.url("itms-services://?action=purchaseIntent&bundleId=incognit&productIdentifier=incognit.plus")?.absoluteString)
    }
}
