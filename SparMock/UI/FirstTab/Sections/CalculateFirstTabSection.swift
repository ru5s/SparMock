//
//  CalculateFirstTabSection.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct CalculateFirstTabSection: View {
    @State var data: MockData
    @State var itemsCount: Int = 1
    @State var isKg: Bool = false
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .frame(height: 20)
                .frame(maxWidth: .infinity)
                .shadow(color: Color.gray.opacity(0.4), radius: 20, x: 0.0, y: 0.0)
            VStack(alignment: .leading ,content: {
                SwitchButton(kgTouched: $isKg)
                HStack(alignment: .center ,content: {
                    CostWithSale(isKg: $isKg, cost: $data.cost, itemsCount: $itemsCount, sale: data.sale)
                        .layoutPriority(1)
                    Spacer()
                    CustomStepper(cost: $data.cost, itemsCount: $itemsCount, isKg: $isKg, weight: data.weight)
                })
                Text("\(!isKg ? (data.cost * itemsCount) : (((1000 / data.weight) * data.cost) * itemsCount))")
                    .strikethrough(true, color: Color.gray)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 20))
                    .padding(.top, -30)
            })
            .padding(.horizontal, 20)
            .padding(.top, 10)
            .background(Color.white)
        }
       
    }
}
