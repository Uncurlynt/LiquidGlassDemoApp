//
//  PanelDemoView.swift
//  LiquidGlassDemoApp
//
//  Created by Артемий Андреев  on 11.06.2025.
//

import SwiftUI

struct PanelDemoView: View {
    @State private var showPanel = false
    
    var body: some View {
        ZStack {
            GradientBackground()

            VStack(spacing: 20) {
                Text("Интерактивная панель")
                    .font(.title2).bold()
                Text("При полном поднятии панели, эффект стекла пропадает, может я где-то накосячил, хз")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)


                Button("Открыть панель") {
                    showPanel = true
                }
                .buttonStyle(.glass)
                .controlSize(.large)
                .accessibilityLabel("Открыть панель инструментов")

                Spacer()
                Image(systemName: "doc.plaintext")
                    .font(.system(size: 80))
                    .foregroundColor(.secondary)
                Text("Представим, что тут что-то есть")
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding()
            .sheet(isPresented: $showPanel) {
                VStack(spacing: 15) {
                    Text("Панель инструмента")
                        .font(.headline)
                    Text("Иконку приложения сделал в Icon Compose, можно редактировать ее вид на главном экране")
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding()
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
            }
        }
    }
}

