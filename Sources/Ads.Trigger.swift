import Foundation

extension Ads {
    enum Trigger: String, CustomStringConvertible {
        case
        ecosia = "https://www.ecosia.org",
        google = "https://www.google.com",
        pubmatic = "https://ads.pubmatic.com",
        googlesyndication = ".*googlesyndication.com",
        dianomi = "https://www.dianomi.com",
        hotjar = "https://vars.hotjar.com",
        media = "https://contextual.media.net",
        googleapis = "https://imasdk.googleapis.com",
        twitter = "https://platform.twitter.com",
        adalliance = "https://mafo.adalliance.io",
        yieldlab = "https://ad.yieldlab.net",
        adsystem = ".*adsystem.com",
        emsservice = "https://static.emsservice.de",
        flashtalking = "https://cdn.flashtalking.com",
        criteo = "https://gum.criteo.com",
        adition = "https://imagesrv.adition.com",
        openx = "https://us-u.openx.net",
        google_pagead = "https://www.google.com/pagead/",
        google_recaptcha = "https://www.google.com/recaptcha/",
        guim = "https://interactive.guim.co.uk",
        indexww = "https://js-sec.indexww.com",
        the_ozone_project = "https://elb.the-ozone-project.com",
        googleadservices = "https://www.googleadservices.com",
        doubleclick = ".*doubleclick.net",
        addthis = "https://s7.addthis.com",
        sparwelt = "https://widgets.sparwelt.click",
        adrtx = "https://adstax-match.adrtx.net",
        amazon_adsystem = "https://aax-eu.amazon-adsystem.com",
        dwcdn = "https://datawrapper.dwcdn.net",
        rubiconproject_assets = "https://secure-assets.rubiconproject.com",
        rubiconproject_eus = "https://eus.rubiconproject.com",
        creativecdn = "https://ams.creativecdn.com",
        youtube_embed = "https://www.youtube.com/embed",
        medtargetsystem = "https://www.medtargetsystem.com",
        snapchat = "https://tr.snapchat.com",
        cloudfront = "https://cloudfront.net",
        linkedin = "https://platform.linkedin.com",
        google_analytics = "https://www.google-analytics.com",
        google_accounts = "https://accounts.google.com",
        ufpcdn = "https://ufpcdn.com",
        onclickgenius = "https://onclickgenius.com",
        appsflyer = "https://app.appsflyer.com",
        onmarshtompor = "https://onmarshtompor.com",
        rakamu = "https://rakamu.com",
        bongacams = "https://bongacams.com",
        bngpt = "https://bngpt.com",
        user_shield = "https://user-shield.com",
        adsco = "https://c.adsco.re",
        bet365 = "https://www.bet365.com",
        caradstag = "https://caradstag.casa",
        monkposseacre = "https://monkposseacre.casa",
        apostropheemailcompetence = "http://apostropheemailcompetence.com",
        fgfgnbmeieorr910 = "https://fgfgnbmeieorr910.com",
        dexpredict = "https://www.dexpredict.com",
        hornsgrid = "https://hornsgrid.com",
        zap = "https://zap.buzz"
        
        var description: String {
            """
"trigger": {
"url-filter": "\(rawValue)"
}
"""
        }
    }
}
