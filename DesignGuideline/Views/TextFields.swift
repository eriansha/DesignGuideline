//
//  TextFields.swift
//  DesignGuideline
//
//  Created by Ivan on 22/10/23.
//

import SwiftUI

struct TextFields: View {
    @State var dummyValue = "Ken"
    private var placeholder = "Username"
    
    var body: some View {
        VStack {
            HStack {
                Text("Text Field")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }.padding(.bottom, 10)
            
            TextField(placeholder, text: $dummyValue)
                .textFieldStyle(PrimaryTextFieldStyle(
                    label: "Username"
                ))
            
            TextField(placeholder, text: $dummyValue)
                .textFieldStyle(PrimaryTextFieldStyle())
            
            TextField(placeholder, text: $dummyValue)
                .textFieldStyle(PrimaryTextFieldStyle(isError: true))
            
            TextField(placeholder, text: $dummyValue)
                .textFieldStyle(PrimaryTextFieldStyle(disabled: true))
        }
    }
}

#Preview {
    TextFields()
}
