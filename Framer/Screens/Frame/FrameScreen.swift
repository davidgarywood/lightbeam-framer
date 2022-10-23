//
//  FrameScreen.swift
//  Framer
//
//  Created by dave on 22/10/22.
//

import SwiftUI

protocol FrameScreenRouter: AnyObject {
}

struct FrameScreen: View {
    @State var router: FrameScreenRouter?
    
    @StateObject var viewModel: FrameViewModel = FrameViewModel()
    
    @State var xOffset: CGFloat = 0.0
    @State var yOffset: CGFloat = 0.0
    @State var scale: CGFloat = 1.0
    @State var thickness: CGFloat = 8.0
    
    var image: Image = Image(uiImage: UIImage(contentsOfFile: "/Users/dave/Developer/lightbeam-govj-ios/screenshots/iPhone 13/Screenshot-iPhone 13-01_1_15960FB6-9862-4C6A-BF64-B4CFE5198B4D.png")!)
    
    var body: some View {
        ScrollView {
            VStack {
                Text("some text")
                Slider(value: $scale, in: 0.0...1.0) { Text("Scale") }
                    .labelStyle(.titleOnly)
                Slider(value: $thickness, in: 0.0...16.0) { Text("border thickness") }
                    .labelStyle(.titleOnly)
                phone()
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
    
    @ViewBuilder func phone() -> some View {
        PhoneView(device: viewModel.device,
                  image: self.image)
        .offset(x: xOffset,
                y: yOffset)
        .scaleEffect(CGSize(width: scale,
                            height: scale))
    }
        
        
}

struct FrameScreenPreviews: PreviewProvider {
    static var previews: some View {
        FrameScreen()
    }
}
