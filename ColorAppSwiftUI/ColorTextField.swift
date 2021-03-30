//
//  ColorTextField.swift
//  ColorAppSwiftUI
//
//  Created by Светлана Романенко on 30.03.2021.
//

import SwiftUI

struct ColorTextField: View {
    @Binding var value: String
    @State private var alertPresented = false

    var body: some View {
        TextField(value, text: $value)
            .keyboardType(.phonePad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 60, height: 40)
            .alert(isPresented: $alertPresented, content: {
                Alert(title: Text("Wrong format"), message: Text("Please enter value from 0 to 255"))
            })
    }
    
    private func checkInput() {
        if let input = Double(value) {
            if input<0 || input>255 {
                value = "0"
                alertPresented.toggle()
                return
            }
            return
        } else {
            value = "0"
            alertPresented.toggle()
            return
        }
    }
}
