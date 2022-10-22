//
//  Environment.swift
//  GoVJ
//
//  Created by dave on 12/06/22.
//

import Foundation

enum UITesting {
    static let backgroundKey = "background"
    static let imagePathKey = "image"
    static let textKey = "text"
    static let frameName = "frame"
    static let offsetName = "offset"

    enum Background: String {
        case mainScreen
        case fxScreen
        case blendedScreen
    }
}
