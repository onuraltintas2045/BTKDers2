//
//  Liste.swift
//  BTKDers2
//
//  Created by Onur Altintas on 25.01.2024.
//

import SwiftUI

struct Liste: View {
    var myList = ["Onur","Mercedes","AMG","GT","63 SE"]

    var body: some View {
        /*List{
            ForEach(myList.indices, id: \.self) { index in
                VStack(alignment : .leading){
                    HStack{
                        Text(myList[index])
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(index % 2 == 0 ? Color.gray.opacity(0.2) : Color.white)
                    }
                }
                
            }
        }
         */
        List(myList.indices, id: \.self) { index in
            Text("\(index + 1). \(myList[index])")
            
        }
    }
}

#Preview {
    Liste()
}
