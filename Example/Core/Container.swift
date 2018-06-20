//
//  Container.swift
//  Copyright © 2018 Oxagile. All rights reserved.
//

import XCTest

struct Container {
    /**
     Instances of app and device to use in any place
     */
    static var app: XCUIApplication = XCUIApplication()
    static var device: XCUIDevice = XCUIDevice.shared
    static var remote: XCUIRemote = XCUIRemote.shared()
}
