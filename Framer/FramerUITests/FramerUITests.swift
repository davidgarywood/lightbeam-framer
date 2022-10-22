//
//  FramerUITests.swift
//  FramerUITests
//
//  Created by dave on 14/10/22.
//

import XCTest

final class FramerUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test01() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchEnvironment[UITesting.textKey] = "Testing Testing"
        app.launchEnvironment[UITesting.imagePathKey] = "/Users/dave/Developer/lightbeam-govj-ios/screenshots/iPhone 13/Screenshot-iPhone 13-01_1_15960FB6-9862-4C6A-BF64-B4CFE5198B4D.png"
        app.launchEnvironment[UITesting.offsetName] = "iPhone 13"
        app.launchEnvironment[UITesting.frameName] = "Apple iPhone 13 Blue"
        app.launchEnvironment[UITesting.backgroundKey] = UITesting.Background.mainScreen.rawValue
        app.launch()
        
        self.takeScreenshot(named: "01")
    }
    
    func takeScreenshot(named name: String) {
        // Take the screenshot
        let fullScreenshot = XCUIScreen.main.screenshot()
        
        // Create a new attachment to save our screenshot
        // and give it a name consisting of the "named"
        // parameter and the device name, so we can find
        // it later.
        let screenshotAttachment = XCTAttachment(
            uniformTypeIdentifier: "public.png",
            name: "Screenshot-\(UIDevice.current.name)-\(name).png",
            payload: fullScreenshot.pngRepresentation,
            userInfo: nil)
            
        // Usually Xcode will delete attachments after
        // the test has run; we don't want that!
        screenshotAttachment.lifetime = .keepAlways
        
        // Add the attachment to the test log,
        // so we can retrieve it later
        add(screenshotAttachment)
    }
}
