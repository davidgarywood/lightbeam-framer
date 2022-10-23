//
//  NotchView.swift
//  Framer
//
//  Created by dave on 23/10/22.
//

import SwiftUI

struct NotchView: View {
    
    var notch: NotchFrame
    
//    var radius: CGFloat = 33/2
//    var height: CGFloat = 33
//    var width: CGFloat = 160
//
//    var color: Color = .black
    
    var body: some View {
        ZStack(alignment: .top) {
            
            HStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .foregroundColor(notch.color)
                    
                    Rectangle()
                        .cornerRadius(notch.height / 4, corners: [.topRight])
                        .blendMode(.destinationOut)
                }
                .compositingGroup()
                .frame(width: notch.height / 2, height: notch.height / 2)
                                
                Rectangle()
                    .foregroundColor(notch.color)
                    .frame(width: notch.width, height: notch.height / 2)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(notch.color)
                    
                    Rectangle()
                        .cornerRadius(notch.height / 4, corners: [.topLeft])
                        .blendMode(.destinationOut)
                }
                .compositingGroup()
                .frame(width: notch.height / 2, height: notch.height / 2)
            }
            
            Rectangle()
                .cornerRadius(notch.radius)
                .foregroundColor(notch.color)
                .frame(width: notch.width, height: notch.height)
        }
    }
    
    func HoleShapeMask(in rect: CGRect) -> Path {
        var shape = Rectangle().path(in: rect)
        shape.addPath(Circle().path(in: rect))
        return shape    
    }
}

struct NotchViewPreviews: PreviewProvider {
    static var previews: some View {
        VStack {
            NotchView(notch: DeviceFrame.iPhone13.notch!)
                .offset(x: 0, y: 0)
            Spacer()
        }
        .ignoresSafeArea()
    }
}
