//
//  SwiftUIView.swift
//  BTKDers2
//
//  Created by Onur Altintas on 28.01.2024.
//

import SwiftUI

struct ListViewExamp: View {
    var body: some View {
        NavigationStack{
            List(TeamUsers){ user in
                Section {
                    
                    NavigationLink {
                        ListViewExamp2(name: user.name)
                    } label: {
                        VStack{
                            HStack{
                                VStack{
                                    Text("Authority")
                                        .font(.title2.bold())
                                    Rectangle()
                                        .fill(Color.black.opacity(0.5))
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 2, alignment: .top)
                                        
                                    Text(user.authority)
                                }
                                Spacer()
                                VStack{
                                    Text("Tasks")
                                        .font(.title2.bold())
                                    Rectangle()
                                        .fill(Color.black.opacity(0.5))
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 2, alignment: .top)
                                    
                                    ForEach(user.tasks.indices, id: \.self) { index in
                                            Text(user.tasks[index])
                                            .multilineTextAlignment(.center)
                                    }
                                }
                                .frame(width: 150, alignment: .center)
                                
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        }
                    }
                    
                } header: {
                    
                    Text(user.name)
                        .font(.largeTitle.bold())
                        .foregroundStyle(Color.black)
                }

                
            }

        }
    }
}

#Preview {
    ListViewExamp()
}
