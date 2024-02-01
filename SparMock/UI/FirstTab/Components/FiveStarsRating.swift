//
//  FiveStarsRating.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct FiveStarsRating: View {
    @State var rating: Int
    var body: some View {
        HStack {
            ForEach(0..<5) { index in
                Image("star")
                    .foregroundColor(index < rating ? Color.yellow : Color.gray.opacity(0.5))
            }
        }
    }
}
