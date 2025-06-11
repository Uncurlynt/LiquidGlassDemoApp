//
//  GlassButtonsView.swift
//  LiquidGlassDemoApp
//
//  Created by Артемий Андреев  on 11.06.2025.
//

import SwiftUI

struct GlassButtonsView: View {
    var body: some View {
        ZStack {
            GradientBackground()

            VStack(spacing: 20) {
                Text("Стеклянные кнопки")
                    .font(.title).bold()
                Text("Вроде третья кнопка неактивная, но она все равно тапается")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Button("Нажми меня") {
                    print("Glass button tapped")
                }
                .buttonStyle(.glass)

                Button {
                    print("Icon glass button tapped")
                } label: {
                    Label("Кнопка", systemImage: "star.fill")
                }
                .buttonStyle(.glass)

                Button("Неактивно") { }
                    .buttonStyle(.glass)
                    .disabled(true)
            }
            .padding()
        }
    }
}
