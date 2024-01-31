//
//  FirstTab.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct FirstTab: View {
    var body: some View {
            VStack {
                ScrollView {
                    VStack(alignment: .leading) {
                        Group {
                            ImageSectorFirstTabSection(data: arriveMockData)
                            TitleProductWithCountryFirstTabSection(data: arriveMockData)
                            DescriptionsFirstTabSection(data: arriveMockData)
                            CharacteristicFirstTabSection(data: arriveMockData)
                        }
                        .padding(.horizontal, 20)
                        ReviewsFirstTabSection(data: arriveMockData)
                        Spacer()
                    }
                }
                CalculateFirstTabSection(data: arriveMockData)
            }
    }
}

#Preview {
    FirstTab()
}
