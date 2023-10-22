//
//  PrimaryButtonStyle.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    
    public var disabled: Bool = true
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 300, height: 50)
            .background(disabled ? .gray : .blue1)
            .foregroundColor(.white)
            .cornerRadius(8)
            .disabled(disabled)
            .padding()
    }
}
