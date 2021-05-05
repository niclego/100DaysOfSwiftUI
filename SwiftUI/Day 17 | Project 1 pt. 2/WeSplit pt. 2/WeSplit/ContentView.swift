//
//  ContentView.swift
//  WeSplit
//
//  Created by Nick Le Gorrec on 4/23/21.
//

import SwiftUI

struct ContentView: View {
    @State private var checkoutAmount = ""
    @State private var numberOfPeople = ""
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var grandTotal: Double {
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkoutAmount) ?? 0
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        
        return grandTotal
    }
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople) ?? 2
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkoutAmount) ?? 0
        
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let ammountPerPerson = grandTotal / peopleCount
        
        return ammountPerPerson
    }
        
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkoutAmount)
                        .keyboardType(.decimalPad)
                    
                    TextField("Number of people", text: $numberOfPeople)
                        .keyboardType(.numberPad)
                }
                
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Grand total")) {
                    Text("$\(grandTotal, specifier: "%.2f")")
                        .background(tipPercentage == 4 ? Color.red : Color.white)

                }
                
                Section(header: Text("Amount per person")) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
