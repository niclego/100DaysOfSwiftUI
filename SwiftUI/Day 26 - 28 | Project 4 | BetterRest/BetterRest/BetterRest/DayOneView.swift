//
//  ContentView.swift
//  BetterRest
//
//  Created by Nicolas Le Gorrec on 5/6/21.
//

import SwiftUI

struct DayOneView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()
    
    var body: some View {
        Form {
            Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                Text("\(sleepAmount, specifier: "%g") hours")
            }
            DatePicker("Please enter a date", selection: $wakeUp, in: Date()...)
        }
    }
}

struct DayOneView_Previews: PreviewProvider {
    static var previews: some View {
        DayOneView()
    }
}
