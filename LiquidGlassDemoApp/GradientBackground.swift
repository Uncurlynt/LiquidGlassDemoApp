//
//  GradientBackground.swift
//  LiquidGlassDemoApp
//
//  Created by Артемий Андреев  on 11.06.2025.
//

import SwiftUI

struct GradientBackground: View {
    @State private var angle = 0.0

    var body: some View {
        AngularGradient(
            gradient: .init(colors: [.blue, .purple, .pink, .blue]),
            center: .center,
            angle: .degrees(angle)
        )
        .blur(radius: 30)
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.linear(duration: 20).repeatForever(autoreverses: false)) {
                angle = 360
            }
        }
    }
}
