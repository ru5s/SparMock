//
//  TitleProductWithCountry.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct TitleProductWithCountryFirstTabSection: View {
    @State var data: MockData
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text(data.name)
                .font(Font.system(size: 40, weight: .bold))
                .padding(.trailing, 30)
            HStack(alignment: .center, spacing: 10, content: {
                Image("Spain_flag_300")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 30, height: 30, alignment: .center)
                Text(data.country)
                Spacer()
            })
            
        }
    }
}

#Preview {
    TitleProductWithCountryFirstTabSection(data: arriveMockData)
}
