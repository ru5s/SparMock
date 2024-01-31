//
//  CustomStepper.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 01/02/24.
//

import SwiftUI

struct CustomStepper: View {
    @Binding var cost: Int
    @Binding var itemsCount: Int
    @Binding var isKg: Bool
    @State var weight: Int
    @State var amount: Int = 0
    var body: some View {
        HStack(content: {
            Button(action: {
                if itemsCount > 1 {
                    itemsCount -= 1
                    amount = cost * itemsCount
                }
            }, label: {
                Image(systemName: "minus")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 20)
                    .frame(height: 20)
            })
            
            VStack {
                Text("\(itemsCount) \(isKg ? "Кг" : "Шт")")
                    .fontWeight(.bold)
                Text("\(!isKg ? amount : ((1000 / weight) * amount)) ₽")
            }
            .frame(maxWidth: 100)
            Button(action: {
                itemsCount += 1
                amount = cost * itemsCount
            }, label: {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 20)
                    .frame(height: 20)
            })
            
        })
        .foregroundColor(Color.white)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(Color.green)
        .clipShape(RoundedRectangle(cornerRadius: 50))
        .onAppear(perform: {
            amount = cost
        })
    }
}

#Preview {
    CustomStepper(cost: .constant(120), itemsCount: .constant(1), isKg: .constant(false), weight: 100)
}
