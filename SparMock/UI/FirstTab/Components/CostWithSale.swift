//
//  CostWithSale.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 01/02/24.
//

import SwiftUI

struct CostWithSale: View {
    @Binding var isKg: Bool
    @Binding var cost: Int
    @Binding var itemsCount: Int
    @State var weight: Int = 200
    @State var sale: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            HStack(content: {
                Text("\(minusPercent(cost: cost, percent: sale, itemsCount: itemsCount, isKg: isKg))")
                    .lineLimit(1)
                    .font(Font.system(size: 40, weight: .bold))
                Fraction(isKg: $isKg)
            })
        })
    }
    
    private func minusPercent(cost: Int, percent: Int, itemsCount: Int, isKg: Bool) -> String {
        let percentToFraction = 1.0 - (Float(percent) / 100)
        let costMinusPercent = Float(cost) * percentToFraction * Float(itemsCount)
        let picesesToKg = Float(1000 / weight)
        if isKg {
            return String(format: "%.1f", costMinusPercent * picesesToKg)
        }
        return String(format: "%.1f", costMinusPercent)
    }
}

#Preview {
    CostWithSale(isKg: .constant(true), cost: .constant(120), itemsCount: .constant(1), sale: 5)
}
