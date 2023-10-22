//
//  SecondaryButtonStyle.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct SecondaryButtonStyle: ButtonStyle {
    
    public var disabled: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        let activeForegroundColor = configuration.isPressed ? Color.gray2 : Color.black
        
        configuration.label
            .frame(minWidth: 342, maxHeight: 45)
            .background(disabled ? .gray2 : .white)
            .foregroundColor(disabled ? .white : activeForegroundColor)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 1)
            )
            .padding()
    }
}
