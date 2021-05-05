//
//  BindingStateView.swift
//  WeSplit
//
//  Created by Nick Le Gorrec on 4/26/21.
//

import SwiftUI

struct BindingStateView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}
