//
//  Copyright © 2017 Oxagile. All rights reserved.
//

import Foundation

struct TestData {
    static let fakeUser: User = User(name: "oxa", email: "oxa@example.com", password: "oxa")

    static let videoForDownload = "Detox: Day 2" //"Ahimsa: Nonviolence"
    static let shortVideo = "Interviewer" //"Gratitude"
    static let videoForSubtitles = "Secrets of the Pineal Gland" //"The Message For Humankind"
    static let episodeTextForSearch = "Yoga for Women Faith Hunter"
    static let serialVideoId = 140581
    static let singalEpisodeId = 104861

}

struct Environment {
    static let isProd = true
}

struct SubtitlesPanelTexts {
    static let off = "OFF".localized
    static let close = "CLOSE".localized
}

struct HomePageText {
    static let featured = "FEATURED".localized
    static let relatedVideos = "RELATED VIDEOS".localized
    static let home = "Home".localized
    static let browse = "Browse".localized
    static let search = "Search".localized
    static let signup = "Sign Up".localized
    static let login = "Login".localized
    static let playlist = "Playlist".localized
    static let account = "Account".localized
    static let removeFromPlaylist = "Remove from Playlist".localized
    static let addToPlaylist =  "Add to Playlist".localized
}


