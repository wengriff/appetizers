//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Adrian Somor on 16/09/2023.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension Image {
    
    func imageCustomModifier() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }
}

//extension View {
//    func standardButtonStyle() -> some View {
//        self.modifier(StandardButtonStyle())
//    }
//}
// with this i can do just .standardButtonStyle() instead of .modifier(StandardButtonStyle())
