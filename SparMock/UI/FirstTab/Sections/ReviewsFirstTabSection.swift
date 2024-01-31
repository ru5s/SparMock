//
//  ReviewsFirstTabSector.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct ReviewsFirstTabSection: View {
    @State var data: MockData
    var padding: CGFloat = 20
    var body: some View {
        ZStack(alignment: .top) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 20, content: {
                    ForEach(data.review, id: \.id) { review in
                        ReviewsCell(data: review)
                    }
                })
                .padding(.horizontal, padding)
                .padding(.bottom, 20)
            }
            .frame(height: 290)
            VStack(content: {
                HStack {
                    Text("Отзывы")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    Spacer()
                    Text("Все \(data.reviews)")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .foregroundColor(Color.green)
                }
                .padding(.horizontal, padding)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Оставить отзыв")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .inset(by: 3)
                                .stroke(Color.accentColor, lineWidth: 3)
                        )
                    
                })
                .padding(.horizontal, padding)
            })
            
        }
        .padding(.top, 10)
        
    }
}

#Preview {
    ReviewsFirstTabSection(data: arriveMockData)
}
