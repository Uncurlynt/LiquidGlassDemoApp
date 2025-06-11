//
//  LiquidGlassView.swift
//  LiquidGlassDemoApp
//
//  Created by Артемий Андреев  on 11.06.2025.
//

import SwiftUI

struct LiquidGlassView: View {
    @State private var gradientAngle = 0.0
    @State private var isExpanded   = false
    @Namespace private var glassNS

    var body: some View {
        ZStack {
            GradientBackground()

            GlassEffectContainer {
                VStack(spacing: 32) {
                    card("Glass.regular")
                        .glassEffect(Glass.regular,
                                     in: RoundedRectangle(cornerRadius: 20))

                    card(".tint(.blue)")
                        .glassEffect(Glass.regular.tint(.blue),
                                     in: RoundedRectangle(cornerRadius: 20))

                    card(".interactive()")
                        .glassEffect(Glass.regular.interactive(),
                                     in: RoundedRectangle(cornerRadius: 20))

                    morphCard
                }
            }
            .glassEffectTransition(.matchedGeometry, isEnabled: true)
            .padding(.horizontal, 24)
        }
    }

    private var morphCard: some View {
        Group {
            if isExpanded {
                card("Expanded")
                    .glassEffect(Glass.regular,
                                 in: RoundedRectangle(cornerRadius: 28))
                    .glassEffectID("demo", in: glassNS)
            } else {
                card("Tap to expand")
                    .glassEffect(Glass.regular.tint(.pink),
                                 in: Capsule())
                    .glassEffectID("demo", in: glassNS)
            }
        }
        .onTapGesture { withAnimation(.spring()) { isExpanded.toggle() } }
    }

    private func card(_ title: String) -> some View {
        Text(title)
            .font(.title3.bold())
            .frame(maxWidth: .infinity)
            .padding(24)
            .multilineTextAlignment(.center)
            .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}
