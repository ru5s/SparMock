//
//  SwitchButton.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import SwiftUI

struct SwitchButton: View {
    @Binding var kgTouched: Bool
    var body: some View {
        HStack(content: {
            Button(action: {
                if kgTouched {
                    kgTouched.toggle()
                }
            }, label: {
                Text("Шт")
                    .padding(.vertical, 5)
                    .frame(maxWidth: .infinity)
                    .background(!kgTouched ? Color.white : Color.clear)
                    .foregroundColor(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            Button(action: {
                if !kgTouched {
                    kgTouched.toggle()
                }
            }, label: {
                Text("Кг")
                    .padding(.vertical, 5)
                    .frame(maxWidth: .infinity)
                    .background(kgTouched ? Color.white : Color.clear)
                    .foregroundColor(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        })
        .padding([.vertical, .horizontal], 3)
        .background(Color.gray.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    SwitchButton(kgTouched: .constant(false))
}
