//
//  CharactetisticComponent.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct CharactetisticComponent: View {
    @State var title: String
    @State var description: String
    var body: some View {
        HStack( alignment: .center, content: {
            Text(title)
                .multilineTextAlignment(.leading)
                .layoutPriority(1)
            DashLine()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                .frame(height: 1)
            Text(description)
                .multilineTextAlignment(.trailing)
                .layoutPriority(1)
        })
    }
}
