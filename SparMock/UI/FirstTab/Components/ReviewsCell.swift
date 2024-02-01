//
//  ReviewsCell.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct ReviewsCell: View {
    @State var data: Review
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(data.name)
                .fontWeight(.bold)
            Text(data.date)
                .foregroundColor(Color.gray)
            FiveStarsRating(rating: data.stars)
            Text(data.comment)
                .frame(width: 250)
                .padding(.trailing, 30)
        }
        .padding(15)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .gray.opacity(0.2), radius: 20, x: 0.0, y: 0.0)
    }
}
