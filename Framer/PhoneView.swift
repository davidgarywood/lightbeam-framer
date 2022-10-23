//
//  Phone.swift
//  Framer
//
//  Created by dave on 23/10/22.
//

import SwiftUI

struct PhoneView: View {
    var device: DeviceFrame
    var image: Image
    
    var body: some View {
        ZStack {
            VStack {
                image
                    .resizable()
                    .frame(width: device.insideSize.width,
                           height: device.insideSize.height)
                    .clipped()
                
            }
            .frame(width: device.insideSize.width,
                   height: device.insideSize.height)
            .mask {
                RoundedRectangle(
                    cornerRadius: device.cornerRadius,
                    style: .continuous
                )
            }
            .background(
                Color.clear
                    .frame(width: device.insideSize.width,
                           height: device.insideSize.height)
                    .overlay(
                        RoundedRectangle(
                            cornerRadius: device.cornerRadius,
                            style: .continuous
                        )
                        .stroke(device.bezelColor,
                                lineWidth: device.bezelThickness)
                    )
            )
            
            if let notch = device.notch {
                VStack {
                    NotchView(notch: notch)
                    Spacer()
                }
            }
        }
        .frame(width: device.insideSize.width,
               height: device.insideSize.height)
    }
}

