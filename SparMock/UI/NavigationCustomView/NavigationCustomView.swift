//
//  NavigationCustomView.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct NavigationCustomView<Content: View>: View {
    var content: () -> Content
    init(
        @ViewBuilder content: @escaping () -> Content = {Spacer() as? Content}
    ){
        self.content = content
    }
    var body: some View {
        ZStack {
            VStack(content: {
                Divider()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.gray.opacity(0.4))
                    content()
                    Spacer()
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(false)
        .background(Color.white)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Label("Back", systemImage: "arrow.left")
                    .foregroundColor(Color.green)
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack(content: {
                    Label("Корзина", image: "noteUpTabBarItem")
                    Label("Корзина", image: "arrowUpTabBarItem")
                        .padding(.horizontal, 10)
                    Label("Корзина", image: "heartTabBarItem")
                })
                .foregroundColor(Color.green)
            }
        }
        
    }
}
