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
    
    func testEcosiaAds() {
        
    }
    
    private func contains(_ type: String, _ selector: String? = nil, _ filter: String) -> Bool {
        dictonary.contains { $0["action"]!["type"] == type
            && $0["trigger"]!["url-filter"] == filter
            && $0["action"]!["selector"] == selector }
    }
}


/*
 
{
 "action": {
     "type": "css-display-none",
     "selector": "div[class*='card-productads']"
 },
 "trigger": {
     "url-filter": "https://www.ecosia.org"
 }
},
{
 "action": {
     "type": "css-display-none",
     "selector": "div[id='taw']"
 },
 "trigger": {
     "url-filter": "https://www.google.com"
 }
},
{
 "action": {
     "type": "css-display-none",
     "selector": "div[id='rhs']"
 },
 "trigger": {
     "url-filter": "https://www.google.com"
 }
},
{
 "action": {
     "type": "css-display-none",
     "selector": "div[class*='commercial']"
 },
 "trigger": {
     "url-filter": "https://www.google.com"
 }
},
{
 "action": {
     "type": "css-display-none",
     "selector": "div[id='tadsb']"
 },
 "trigger": {
     "url-filter": "https://www.google.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://ads.pubmatic.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": ".*googlesyndication.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://www.dianomi.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://vars.hotjar.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://contextual.media.net"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://imasdk.googleapis.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://platform.twitter.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://mafo.adalliance.io"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://ad.yieldlab.net"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": ".*adsystem.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://static.emsservice.de"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://cdn.flashtalking.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://gum.criteo.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://imagesrv.adition.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://us-u.openx.net"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://www.google.com/pagead/"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://interactive.guim.co.uk"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://js-sec.indexww.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://elb.the-ozone-project.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://www.googleadservices.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://googleads.g.doubleclick.net"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://s7.addthis.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://widgets.sparwelt.click"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://adstax-match.adrtx.net"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://aax-eu.amazon-adsystem.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://datawrapper.dwcdn.net"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://secure-assets.rubiconproject.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://eus.rubiconproject.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://ams.creativecdn.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://www.youtube.com/embed"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://www.medtargetsystem.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://tr.snapchat.com"
 }
},
{
 "action": {
     "type": "block"
 },
 "trigger": {
     "url-filter": "https://cloudfront.net"
 }
}
]
"""
 
 private static let _cookies = """
[
{
 "action": {
     "type": "block-cookies"
 },
 "trigger": {
     "url-filter": ".*"
 }
}
]
"""
}

 */