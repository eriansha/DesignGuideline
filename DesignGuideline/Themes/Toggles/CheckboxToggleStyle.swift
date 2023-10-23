//
//  CheckboxToggleStyle.swift
//  DesignGuideline
//
//  Created by Ivan on 23/10/23.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    public var disabled: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        let fillColor = configuration.isOn ? Color.blue1 : Color.white
        
        HStack {
            Circle()
                .stroke(
                    disabled ? .gray2 : .blue1,
                    lineWidth: 2
                )
                .fill(disabled ? .gray2 : fillColor)
                .frame(width: 24, height: 24)
                .if(!disabled) { view in
                    view.overlay {
                        Image(systemName: configuration.isOn ? "checkmark" : "")
                            .foregroundStyle(.white)
                    }
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
                .disabled(disabled)
           
           configuration.label
        }
    }
}
