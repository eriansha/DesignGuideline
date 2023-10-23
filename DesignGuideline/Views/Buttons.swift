//
//  Buttons.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack {
            HStack {
                Text("Button")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }.padding(.bottom, 10)
            
            Button(action: {}) {
                Text("Submit")
            }.buttonStyle(PrimaryBlueButtonStyle())
            
            Button(action: {}) {
                Text("Okay")
            }.buttonStyle(PrimaryGreenButtonStyle())
            
            Button(action: {}) {
                Text("Sign In")
            }.buttonStyle(SecondaryButtonStyle())
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "trash")
                    Text("Delete")
                }
            }.buttonStyle(DestructiveButtonStyle())
        }
    }
}

#Preview {
    Buttons()
}
