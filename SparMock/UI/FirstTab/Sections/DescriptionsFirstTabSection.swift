//
//  DescriptionsFirstTabSector.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct DescriptionsFirstTabSection: View {
    @State var data: MockData
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Описание")
                .fontWeight(.bold)
            Text(data.description)
        }
        .padding(.top, 20)
    }
}
