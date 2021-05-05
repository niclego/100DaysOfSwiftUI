//
//  Challenge.swift
//  ViewsAndModifiers
//
//  Created by Nick Le Gorrec on 5/3/21.
//

import SwiftUI

struct ChallengeTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func challengeTitleStyle() -> some View {
        self.modifier(ChallengeTitle())
    }
}

struct ChallengeView: View {
    var body: some View {
        Text("Hello")
            .challengeTitleStyle()
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
