//
//  ContentView.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        TabView {
            NavigationView {
                NavigationCustomView {
                    FirstTab()
                }
            }
            .tabItem {
                Label("Главная", image: "home")
            }
            NavigationView {
                NavigationCustomView {
                    VStack {
                        Text("Catalog tab")
                    }
                }
            }
            .tabItem {
                Label("Каталог", image: "catalog")
            }
            NavigationView {
                NavigationCustomView {
                    VStack {
                        Text("Cart tab")
                    }
                }
            }
            .tabItem {
                Label("Корзина", systemImage: "cart")
            }
            NavigationView {
                NavigationCustomView {
                    VStack {
                        Text("Profile tab")
                    }
                }
            }
            .tabItem {
                Label("Профиль", image: "profile")
            }
        }
        .accentColor(.green)
        .onAppear {
            UITabBar.appearance().unselectedItemTintColor = .darkGray
        }
    }
}
