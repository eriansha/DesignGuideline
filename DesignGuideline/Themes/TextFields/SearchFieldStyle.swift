//
//  SearchFieldStyle.swift
//  DesignGuideline
//
//  Created by Ivan on 23/10/23.
//

import SwiftUI

struct SearchFieldStyle: TextFieldStyle {
    
    @Binding var value: String
    public var label: String?
    public var isError: Bool = false
    public var disabled: Bool = false
    
    func handleRemoveText() {
        value = ""
    }
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.gray1)
            
            configuration
            
            if value != "" {
                Button(action: handleRemoveText) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(.gray1)
                }
            }
        }
        .frame(minWidth: 344, minHeight: 48)
        .padding(.horizontal, 12)
        .background(.gray2)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray2, lineWidth: 1)
        )
    }
}
