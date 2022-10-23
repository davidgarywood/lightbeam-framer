////
////  ContentView.swift
////  Framer
////
////  Created by dave on 14/10/22.
////
//
//import SwiftUI
//
//class ViewModel: ObservableObject {
//    var text: String = ""
//    var image: UIImage!
//    var frameImage: UIImage!
//    var background: UITesting.Background!
//    
//    var frames = FrameOffsets()
//    
//    var width: CGFloat
//    var offsetX: CGFloat
//    var offsetY: CGFloat
//    
//    init(text: String = (ProcessInfo.processInfo.environment[UITesting.textKey] ?? ""),
//         imagePath: String = (ProcessInfo.processInfo.environment[UITesting.imagePathKey] ?? ""),
//         frameName: String = (ProcessInfo.processInfo.environment[UITesting.frameName] ?? ""),
//         offsetName: String = (ProcessInfo.processInfo.environment[UITesting.offsetName] ?? ""),
//         backgroundString: String = (ProcessInfo.processInfo.environment[UITesting.backgroundKey] ?? "")) {
//        self.text = text
//        self.image = UIImage(data: try! Data(contentsOf: URL(fileURLWithPath: imagePath)))
//        
//        let frameURL = frames.baseURL.appending(path: frameName).appendingPathExtension("png")
//        self.frameImage = UIImage(data: try! Data(contentsOf: frameURL))
//        self.background = UITesting.Background(rawValue: backgroundString)
//        
//        let offset = frames.portrait[offsetName]
//        width = CGFloat(offset!.width)
//        offsetX = offset!.xOffset
//        offsetY = offset!.yOffset
//    }
//    
//}
//
//struct ContentView: View {
//    @StateObject var viewModel = ViewModel()
//    
//    var body: some View {
//        VStack {
//            Text(viewModel.text)
//            ZStack {
//                Image(uiImage: viewModel.image)
//                    .aspectRatio(1.0, contentMode: .fit)
//                    .offset(x: viewModel.offsetX, y: viewModel.offsetY)
//
//                Image(uiImage: viewModel.frameImage)
//                    .resizable()
//                    .scaledToFit()
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(viewModel: ViewModel(text: "test",
//                                         imagePath: "Users/dave/Developer/lightbeam-govj-ios/screenshots/iPhone 8/Screenshot-iPhone 8-01_1_DDEB4DBA-C09B-40D9-B447-03D32A93E555.png",
//                                         frameName: "Apple iPhone 8 Plus Gold",
//                                         offsetName: "iPhone 8",
//                                         backgroundString: UITesting.Background.mainScreen.rawValue))
//        
//        ContentView(viewModel: ViewModel(text: "test",
//                                         imagePath:  "/Users/dave/Developer/lightbeam-govj-ios/screenshots/iPhone 13/Screenshot-iPhone 13-01_1_15960FB6-9862-4C6A-BF64-B4CFE5198B4D.png",
//                                         frameName:  "Apple iPhone 13 Midnight",
//                                         offsetName: "iPhone 13",
//                                         backgroundString: UITesting.Background.mainScreen.rawValue))
//    }
//}
