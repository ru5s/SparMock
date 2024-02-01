//
//  SaleSheet.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct SaleSheet: View {
    @State var sale: String
    var body: some View {
        ZStack(alignment: .center,content: {
            Image("sheet")
                .resizable()
                .scaledToFit()
                .frame(width: 60)
            Text("-\(sale)")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top, 3)
        })
    }
}
