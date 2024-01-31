//
//  ContentView.swift
//  MySpar
//
//  Created by Ashot Kirakosyan on 30.01.24.
//

import SwiftUI

struct AppTabView: View {
    
    var body: some View {
        TabView {
            
            ProductDetailView()
                .tabItem {
                    Image(systemName: "leaf.circle")
                    Text("Главная")
                }
            
            Text("Каталог")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                        
                    Text("Каталог")
                }
            
            Text("Корзина")
                .tabItem {
                    Image(systemName: "cart")
                        .foregroundColor(.clear)
                    Text("Корзина")
                }
            
            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                        .foregroundColor(.clear)
                    Text("Профиль")
                }
            
        }
        .accentColor(.green)
    }
}

#Preview {
    AppTabView()
}
