//
//  LoopView.swift
//  WeSplit
//
//  Created by Nick Le Gorrec on 4/26/21.
//

import SwiftUI

struct LoopView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        Picker("Select your student", selection: $selectedStudent) {
            ForEach(0 ..< students.count) {
                Text(self.students[$0])
            }
        }
    }
}
