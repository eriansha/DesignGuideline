//
//  PrimaryBlueButtonStyle.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct PrimaryBlueButtonStyle: ButtonStyle {
    
    public var disabled: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        let activeForegroundColor = configuration.isPressed ? Color.blue2 : Color.white
        
        configuration.label
            .frame(minWidth: 342, maxHeight: 45)
            .background(disabled ? .gray2 : .blue1)
            .foregroundColor(disabled ? .white : activeForegroundColor)
            .cornerRadius(8)
            .disabled(disabled)
            .padding()
    }
}
