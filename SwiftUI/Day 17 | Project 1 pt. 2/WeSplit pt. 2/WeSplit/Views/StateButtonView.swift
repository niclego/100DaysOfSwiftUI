//
//  StateButtonView.swift
//  WeSplit
//
//  Created by Nick Le Gorrec on 4/26/21.
//

import SwiftUI

struct StateButtonView: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count \(tapCount)") {
            self.tapCount += 1
        }
    }
}
