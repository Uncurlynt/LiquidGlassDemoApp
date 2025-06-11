//
//  ContentView.swift
//  LiquidGlassDemoApp
//
//  Created by Артемий Андреев  on 11.06.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LiquidGlassView()
                .tabItem {
                    Image(systemName: "rectangle.on.rectangle.angled")
                    Text("Liquid Glass")
                }
            GlassButtonsView()
                .tabItem {
                    Image(systemName: "circle.grid.hex")
                    Text("Стекл. кнопки")
                }

            PanelDemoView()
                .tabItem {
                    Image(systemName: "square.bottomthird.inset.filled")
                    Text("Панель")
                }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}
