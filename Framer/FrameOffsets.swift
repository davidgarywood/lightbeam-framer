////
////  FrameOffsets.swift
////  Framer
////
////  Created by dave on 15/10/22.
////
//
//import Foundation
//import SwiftUI
//
//struct Offset: Codable {
//    var offset: String
//    var width: Int
//    
//    var xOffset: CGFloat {
//        let int = Int(String(offset.split(separator: "+").first!))!
//        return CGFloat(int)
//    }
//    
//    var yOffset: CGFloat {
//        let int = Int(String(offset.split(separator: "+").last!))!
//        return CGFloat(int)
//    }
//    
//}
//
//class FrameOffsets {
//    public var portrait: [String: Offset] = [:]
//    
//    public let baseURL: URL
//    
//    init(baseURL: URL = URL(filePath: "/Users/dave/Developer/frameit-frames/latest")) {
//        self.baseURL = baseURL
//        
//        let framesURL = baseURL.appending(path: "offsets").appendingPathExtension("json")
//        
//        let data = try! Data(contentsOf: framesURL)
//        let dataDict = try! JSONDecoder().decode([String: [String: Offset]].self, from: data)
//        
//        self.portrait = dataDict["portrait"]!
//    }
//}
