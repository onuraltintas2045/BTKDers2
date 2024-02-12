//
//  OzelGorunum.swift
//  BTKDers2
//
//  Created by Onur Altintas on 25.01.2024.
//

import SwiftUI

struct OzelGorunum: View {
    var imageName : Image
    var body: some View {
        VStack {
            imageName
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth : 4))
                .shadow(radius: 4)
            .padding()
        }
    }
}

#Preview {
    OzelGorunum(imageName: Image(systemName:
                                    "checkmark"))
}
