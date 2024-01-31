//
//  Fraction.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct Fraction: View {
    @Binding var isKg: Bool
    var body: some View {
        ZStack(alignment: .center) {
            VStack(content: {
                Text("₽")
                    .font(.system(size: 15))
                    .padding(.trailing, 15)
                Text(isKg ? "Кг" : "Шт")
                    .font(.system(size: 15))
                    .padding(.leading, 25)
            })
            
            Rectangle()
                .background(Color.black)
                .rotationEffect(.degrees(315.0))
            
                .frame(width: 25, height: 1)
        }
        .frame(width: 50, height: 30)
    }
}

#Preview {
    Fraction(isKg: .constant(false))
}
