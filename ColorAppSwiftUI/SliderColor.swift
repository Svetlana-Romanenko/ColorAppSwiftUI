//
//  SliderColor.swift
//  ColorAppSwiftUI
//
//  Created by Светлана Романенко on 30.03.2021.
//

import SwiftUI

struct SliderColor: View {
    @Binding var stringValue: String
    @Binding var doubleValue: Double
    
    var textColor: Color
    
    var body: some View {
        HStack {
            Text(stringValue)
                .foregroundColor(.white)
                .frame(width: 60, height: 40)
            Slider(value: $doubleValue, in: 0...255, step: 1)
                .accentColor(textColor)
            ColorTextField(value: $stringValue)
        }
        .padding(.horizontal)
    }
}
