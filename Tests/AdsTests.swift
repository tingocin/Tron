import XCTest
import Tron

final class AdsTests: XCTestCase {
    private var dictonary: [[String : [String : String]]]!
    
    override func setUp() {
        dictonary = (try! JSONSerialization.jsonObject(with: .init(Ads.serialise.utf8))) as? [[String : [String : String]]]
    }
    
    func testEcosia() {
        XCTAssertTrue(contains("css-display-none", "div[class*='card-ad']", "https://www.ecosia.org"))
        XCTAssertTrue(contains("css-display-none", "div[class*='card-productads']", "https://www.ecosia.org"))
    }
    
    func testGoogle() {
        XCTAssertTrue(contains("css-display-none", "div[id='taw']", "https://www.google.com"))
        XCTAssertTrue(contains("css-display-none", "div[id='rhs']", "https://www.google.com"))
        XCTAssertTrue(contains("css-display-none", "div[class*='commercial']", "https://www.google.com"))
        XCTAssertTrue(contains("css-display-none", "div[id='tadsb']", "https://www.google.com"))
    }
    
    func testBlock() {
        XCTAssertTrue(contains("block", nil, "https://ads.pubmatic.com"))
        XCTAssertTrue(contains("block", nil, ".*googlesyndication.com"))
        XCTAssertTrue(contains("block", nil, "https://www.dianomi.com"))
        XCTAssertTrue(contains("block", nil, "https://vars.hotjar.com"))
        XCTAssertTrue(contains("block", nil, "https://contextual.media.net"))
        XCTAssertTrue(contains("block", nil, "https://imasdk.googleapis.com"))
        XCTAssertTrue(contains("block", nil, "https://platform.twitter.com"))
        XCTAssertTrue(contains("block", nil, "https://mafo.adalliance.io"))
        XCTAssertTrue(contains("block", nil, "https://ad.yieldlab.net"))
        XCTAssertTrue(contains("block", nil, ".*adsystem.com"))
        XCTAssertTrue(contains("block", nil, "https://static.emsservice.de"))
        XCTAssertTrue(contains("block", nil, "https://cdn.flashtalking.com"))
        XCTAssertTrue(contains("block", nil, "https://gum.criteo.com"))
        XCTAssertTrue(contains("block", nil, "https://imagesrv.adition.com"))
        XCTAssertTrue(contains("block", nil, "https://us-u.openx.net"))
        XCTAssertTrue(contains("block", nil, "https://www.google.com/pagead/"))
        XCTAssertTrue(contains("block", nil, "https://www.google.com/recaptcha/"))
        XCTAssertTrue(contains("block", nil, "https://interactive.guim.co.uk"))
        XCTAssertTrue(contains("block", nil, "https://js-sec.indexww.com"))
        XCTAssertTrue(contains("block", nil, "https://elb.the-ozone-project.com"))
        XCTAssertTrue(contains("block", nil, "https://www.googleadservices.com"))
        XCTAssertTrue(contains("block", nil, ".*doubleclick.net"))
        XCTAssertTrue(contains("block", nil, "https://s7.addthis.com"))
        XCTAssertTrue(contains("block", nil, "https://widgets.sparwelt.click"))
        XCTAssertTrue(contains("block", nil, "https://adstax-match.adrtx.net"))
        XCTAssertTrue(contains("block", nil, "https://aax-eu.amazon-adsystem.com"))
        XCTAssertTrue(contains("block", nil, "https://datawrapper.dwcdn.net"))
        XCTAssertTrue(contains("block", nil, "https://secure-assets.rubiconproject.com"))
        XCTAssertTrue(contains("block", nil, "https://eus.rubiconproject.com"))
        XCTAssertTrue(contains("block", nil, "https://ams.creativecdn.com"))
        XCTAssertTrue(contains("block", nil, "https://www.youtube.com/embed"))
        XCTAssertTrue(contains("block", nil, "https://www.medtargetsystem.com"))
        XCTAssertTrue(contains("block", nil, "https://tr.snapchat.com"))
        XCTAssertTrue(contains("block", nil, "https://cloudfront.net"))
        XCTAssertTrue(contains("block", nil, "https://platform.linkedin.com"))
        XCTAssertTrue(contains("block", nil, "https://www.google-analytics.com"))
        XCTAssertTrue(contains("block", nil, "https://accounts.google.com"))
        XCTAssertTrue(contains("block", nil, "https://ufpcdn.com"))
        XCTAssertTrue(contains("block", nil, "https://onclickgenius.com"))
        XCTAssertTrue(contains("block", nil, "https://app.appsflyer.com"))
        XCTAssertTrue(contains("block", nil, "https://onmarshtompor.com"))
        XCTAssertTrue(contains("block", nil, "https://rakamu.com"))
        XCTAssertTrue(contains("block", nil, "https://bongacams.com"))
        XCTAssertTrue(contains("block", nil, "https://bngpt.com"))
        XCTAssertTrue(contains("block", nil, "https://user-shield.com"))
    }
    
    private func contains(_ type: String, _ selector: String?, _ filter: String) -> Bool {
        dictonary.contains { $0["action"]!["type"] == type
            && $0["trigger"]!["url-filter"] == filter
            && $0["action"]!["selector"] == selector }
    }
}
