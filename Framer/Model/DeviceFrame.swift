//
//  DeviceFrame.swift
//  Framer
//
//  Created by dave on 22/10/22.
//

import Foundation
import SwiftUI

struct DeviceFrame {
    var insideSize: CGSize
    var frameThickness: CGFloat
    var bezelThickness: CGFloat
    
    var frameColor: Color = .red
    var bezelColor: Color = .black
    
    var cornerRadius: CGFloat
    
    var notch: NotchFrame?
}

extension DeviceFrame {
    static var iPhone14 = DeviceFrame(insideSize: CGSize(width: 393, height: 852),
                                      frameThickness: 2,
                                      bezelThickness: 16,
                                      cornerRadius: 55)
    
    static var iPhone13 = DeviceFrame(insideSize: CGSize(width: 390, height: 844),
                                      frameThickness: 2,
                                      bezelThickness: 16,
                                      cornerRadius: 47.33,
                                      notch: NotchFrame(radius: 33 / 2, height: 33, width: 160))
    
}
