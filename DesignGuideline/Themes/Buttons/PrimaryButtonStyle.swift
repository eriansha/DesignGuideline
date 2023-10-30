//
//  PrimaryButtonStyle.swift
//  DesignGuideline
//
//  Created by Ivan on 30/10/23.
//

import Foundation

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    
    public var disabled: Bool = false
    public var color: PrimaryColor = .green
    
    func makeBody(configuration: Configuration) -> some View {
        let primaryForegroundColor = color == .green ? Color.green2 : Color.blue2
        let primaryBackgroundColor = color == .green ? Color.green1 : Color.blue1
        
        let activeForegroundColor = configuration.isPressed ? primaryForegroundColor : Color.white
        
        configuration.label
            .frame(minWidth: 342, minHeight: 45)
            .background(disabled ? .gray2 : primaryBackgroundColor)
            .foregroundColor(disabled ? .white : activeForegroundColor)
            .cornerRadius(10)
            .disabled(disabled)
            .padding()
    }
}

extension PrimaryButtonStyle {
    enum PrimaryColor {
        case blue, green
    }
}
