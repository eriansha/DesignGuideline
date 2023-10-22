//
//  ContentView.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Button")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            
            
            Button(action: {}) {
                Text("Submit")
            }.buttonStyle(PrimaryBlueButtonStyle())
            
            Button(action: {}) {
                Text("Okay")
            }.buttonStyle(PrimaryGreenButtonStyle())
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "trash")
                    Text("Delete")
                }
            }.buttonStyle(SecondaryButtonStyle())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
