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
            Button("Submit") {
                
            }.buttonStyle(PrimaryBlueButtonStyle())
            
            Button("Okay") {
                
            }.buttonStyle(PrimaryGreenButtonStyle())
            
            Button("Delete") {
                
            }.buttonStyle(SecondaryButtonStyle())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
