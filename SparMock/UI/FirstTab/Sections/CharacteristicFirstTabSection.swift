//
//  CharacteristicFirstTab.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct CharacteristicFirstTabSection: View {
    @State var data: MockData
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Основные характиристики")
                .fontWeight(.bold)
            CharactetisticComponent(title: "Производство", description: data.characteristic.country)
            CharactetisticComponent(title: "Энергетическая ценность, ккал/100 г", description: data.characteristic.energy)
            CharactetisticComponent(title: "Жиры/100г", description: data.characteristic.fats)
            CharactetisticComponent(title: "Белки/100г", description: data.characteristic.proteins)
            CharactetisticComponent(title: "Углеводы/100г", description: data.characteristic.carbohydrates)
            Button(action: {}, label: {
                Text("Все характеристики")
                    .fontWeight(.bold)
            })
            .padding(.top, 10)
        }
        .padding(.top, 20)
    }
}

#Preview {
    CharacteristicFirstTabSection(data: arriveMockData)
}
