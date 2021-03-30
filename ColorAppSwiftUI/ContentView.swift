//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Светлана Романенко on 30.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue: Double = 50
    @State private var greenSliderValue: Double = 100
    @State private var blueSliderValue: Double = 150

    
    var body: some View {
        ZStack(alignment: .top){
            Color(.gray).ignoresSafeArea()
            VStack {
                ColorView(rColor: $redSliderValue,
                          gColor: $greenSliderValue,
                          bColor: $blueSliderValue)
                SliderColor(stringValue: string(redSliderValue), doubleValue: $redSliderValue, textColor: .red)
                SliderColor(stringValue: string(greenSliderValue), doubleValue: $greenSliderValue, textColor: .green)
                SliderColor(stringValue: string(blueSliderValue), doubleValue: $blueSliderValue, textColor: .blue)
            }
        }
    }
    
    private func string(_ value: Double) -> Binding<String> {
        return Binding.constant(String(value))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
