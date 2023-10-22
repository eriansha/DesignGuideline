//
//  DestructiveButtonStyle.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct DestructiveButtonStyle: ButtonStyle {
    
    public var disabled: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        let activeForegroundColor = configuration.isPressed ? Color.red3 : Color.red2
        
        configuration.label
            .frame(minWidth: 342, maxHeight: 45)
            .background(disabled ? .gray2 : .red1)
            .foregroundColor(disabled ? .white : activeForegroundColor)
            .cornerRadius(10)
            .padding()
    }
}
