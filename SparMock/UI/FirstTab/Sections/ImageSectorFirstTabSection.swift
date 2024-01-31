//
//  ImageSector.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct ImageSectorFirstTabSection: View {
    @State var data: MockData
    var body: some View {
        VStack(alignment: .leading) {
            Text(data.paymentMethod)
                .foregroundColor(Color.white)
                .padding(.horizontal ,10)
                .padding(.vertical ,7)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 7))
            Image("lipa")
                .frame(maxWidth: .infinity)
                .padding()
            HStack {
                Image("star")
                    .foregroundColor(Color.yellow)
                Text(String(data.rating))
                Text("| \(data.reviews) отзывов")
                    .foregroundColor(Color.gray)
                Spacer()
                SaleSheet(sale: "\(data.sale)%")
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ImageSectorFirstTabSection(data: arriveMockData)
}
