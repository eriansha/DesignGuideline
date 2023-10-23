//
//  PrimaryGreenButtonStyle..swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct PrimaryGreenButtonStyle: ButtonStyle {
    
    public var disabled: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        let activeForegroundColor = configuration.isPressed ? Color.green2 : Color.white
        
        configuration.label
            .frame(minWidth: 342, minHeight: 45)
            .background(disabled ? .gray2 : .green1)
            .foregroundColor(disabled ? .white : activeForegroundColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
    }
}
