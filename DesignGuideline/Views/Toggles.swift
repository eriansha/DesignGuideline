//
//  Toggles.swift
//  DesignGuideline
//
//  Created by Ivan on 23/10/23.
//

import SwiftUI

struct Toggles: View {
    @State var dummyIsChecked: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Toggle")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            
            Toggle("Check me", isOn: $dummyIsChecked)
                .toggleStyle(CheckboxToggleStyle())
            
            Toggle("Check me", isOn: $dummyIsChecked)
                .toggleStyle(CheckboxToggleStyle(disabled: true))
        }
    }
}

#Preview {
    Toggles()
}
