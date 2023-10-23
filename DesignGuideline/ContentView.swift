//
//  ContentView.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Buttons()
                
                TextFields()
                
                Toggles()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
