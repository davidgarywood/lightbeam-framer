//
//  FrameViewScreen.swift
//  Framer
//
//  Created by dave on 22/10/22.
//

import SwiftUI

protocol FrameViewScreenRouter: AnyObject {
}

struct FrameViewScreen: View {
    @State var router: FrameViewScreenRouter?
    
    @StateObject var viewModel: FrameViewViewModel = FrameViewViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FrameViewScreenPreviews: PreviewProvider {
    static var previews: some View {
        FrameViewScreen()
    }
}
