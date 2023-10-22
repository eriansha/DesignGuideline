//
//  TextFieldStyle.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct PrimaryTextFieldStyle: TextFieldStyle {
    
    public var isError: Bool = false
    public var disabled: Bool = false
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        let backgroundColor = isError ? Color.red1 : Color.white
        
        configuration
            .frame(minWidth: 344, minHeight: 48)
            .padding(.horizontal, 12)
            .background(disabled ? .gray2 : backgroundColor)
            .cornerRadius(10)
            .overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray2, lineWidth: 1)
            )
            .padding(.vertical, 10)
            .disabled(disabled)
    }
}
