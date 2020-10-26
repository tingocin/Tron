import Foundation

extension Ads {
    struct Rule: Hashable {
        static let all = Set([
                                Self(.css(.Class("card-ad")), .ecosia),
                                .init(.css(.Class("card-productads")), .ecosia),
                                .init(.css(.Id("taw")), .google),
                                .init(.css(.Id("rhs")), .google),
                                .init(.css(.Id("tadsb")), .google),
                                .init(.css(.Class("commercial")), .google),
                                .init(.block, .pubmatic),
                                .init(.block, .googlesyndication),
                                .init(.block, .dianomi),
                                .init(.block, .hotjar),
                                .init(.block, .media),
                                .init(.block, .googleapis),
                                .init(.block, .twitter),
                                .init(.block, .adalliance),
                                .init(.block, .yieldlab),
                                .init(.block, .adsystem),
                                .init(.block, .emsservice),
                                .init(.block, .flashtalking),
                                .init(.block, .criteo),
                                .init(.block, .adition),
                                .init(.block, .openx),
                                .init(.block, .google_pagead),
                                .init(.block, .google_recaptcha),
                                .init(.block, .guim),
                                .init(.block, .indexww),
                                .init(.block, .the_ozone_project),
                                .init(.block, .googleadservices),
                                .init(.block, .doubleclick),
                                .init(.block, .addthis),
                                .init(.block, .sparwelt),
                                .init(.block, .adrtx),
                                .init(.block, .amazon_adsystem),
                                .init(.block, .dwcdn),
                                .init(.block, .rubiconproject_assets),
                                .init(.block, .rubiconproject_eus),
                                .init(.block, .creativecdn),
                                .init(.block, .youtube_embed),
                                .init(.block, .medtargetsystem),
                                .init(.block, .snapchat),
                                .init(.block, .cloudfront),
                                .init(.block, .linkedin),
                                .init(.block, .google_analytics),
                                .init(.block, .google_accounts),
                                .init(.block, .ufpcdn),
                                .init(.block, .onclickgenius),
                                .init(.block, .appsflyer),
                                .init(.block, .onmarshtompor),
                                .init(.block, .rakamu),
                                .init(.block, .bongacams),
                                .init(.block, .bngpt),
                                .init(.block, .user_shield),
                                .init(.block, .adsco),
                                .init(.block, .bet365),
                                .init(.block, .caradstag),
                                .init(.block, .monkposseacre),
                                .init(.block, .apostropheemailcompetence),
                                .init(.block, .fgfgnbmeieorr910),
                                .init(.block, .dexpredict),
                                .init(.block, .hornsgrid),
                                .init(.block, .zap)])
        
        let action: Action
        let trigger: Trigger
        
        init(_ action: Action, _ trigger: Trigger) {
            self.action = action
            self.trigger = trigger
        }
        
        func hash(into: inout Hasher) {
            into.combine(action)
            into.combine(trigger)
        }
        
        static func == (lhs: Self, rhs: Self) -> Bool {
            lhs.action == rhs.action && lhs.trigger == rhs.trigger
        }
    }
}
