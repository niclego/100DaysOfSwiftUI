//
//  ContentView.swift
//  TimeConversion
//
//  Created by Nick Le Gorrec on 4/27/21.
//

import SwiftUI

struct ContentView: View {
    @State private var inputAmount = ""
    @State private var inputUnitIndex = 1
    @State private var outputUnitIndex = 1
    
    private let timeUnits = [UnitLength.meters, UnitLength.kilometers, UnitLength.feet, UnitLength.yards, UnitLength.miles]
    
    private var convertedTime: Double {
        let inputLengthType = timeUnits[inputUnitIndex]
        let outputLengthType = timeUnits[outputUnitIndex]
        let inputAmount = Double(self.inputAmount) ?? 0
        
        let inputLength = Measurement(value: inputAmount, unit: inputLengthType)
        let outputLength = inputLength.converted(to: outputLengthType)
        
        return outputLength.value
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                  TextField("Input distance", text: $inputAmount)
                }
                
                Section(header: Text("Choose the input unit")) {
                    Picker("Input unit", selection: $inputUnitIndex) {
                        ForEach(0 ..< timeUnits.count) {
                            Text(timeUnits[$0].symbol)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Choose the output unit")) {
                    Picker("Output unit", selection: $outputUnitIndex) {
                        ForEach(0 ..< timeUnits.count) {
                            Text(timeUnits[$0].symbol)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Conversion result")) {
                    Text("\(convertedTime, specifier: "%.3f")")
                }
            }
            .navigationTitle("Distance Conversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
