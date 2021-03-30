//
//  ColorView.swift
//  ColorAppSwiftUI
//
//  Created by Светлана Романенко on 30.03.2021.
//

import SwiftUI


struct ColorView: View {
    
    @Binding var rColor: Double
    @Binding var gColor: Double
    @Binding var bColor: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 300, height: 150)
            .foregroundColor(Color(red: rColor/255,
                                   green: gColor/255,
                                   blue: bColor/255))
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.white))
    }
}
