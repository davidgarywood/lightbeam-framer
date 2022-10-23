//
//  FrameViewModel.swift
//  Framer
//
//  Created by dave on 22/10/22.
//

import Foundation

class FrameViewModel: ObservableObject {
    @Published var device: DeviceFrame
    
    init() {
        device = DeviceFrame.iPhone13
    }
}
