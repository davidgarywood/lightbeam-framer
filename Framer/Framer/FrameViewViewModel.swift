//
//  FrameViewViewModel.swift
//  Framer
//
//  Created by dave on 22/10/22.
//

import Foundation

class FrameViewViewModel: ObservableObject {
    @Published var fileName: URL
    
    init()
    self.fileName = URL(fileURLWithPath: <#T##String#>)
    }
    
}
