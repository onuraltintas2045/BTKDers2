//
//  ContentView.swift
//  BTKDers2
//
//  Created by Onur Altintas on 24.01.2024.
//

import SwiftUI

struct ContentView: View {
    var width: CGFloat = UIScreen.main.bounds.width
    var height : CGFloat = UIScreen.main.bounds.height
    @State var buttonText: String = ""
    @State var buttonCount: Int = 0
    var body: some View {
        NavigationStack{
            VStack{
                OzelGorunum(imageName: Image("Onur"))
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.orange)
                Text("Merhaba Dunya")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.blue)
                Button(action: {
                    buttonCount += 1
                }, label: {
                    Text("Click To Increase= \(String(buttonCount))")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.black)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                })
                VStack{
                    NavigationLink(
                        destination: OzelGorunum(imageName: Image("Onur")),
                        label: {
                            Text("Go to second page")
                                .font(.title3)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(Color.blue)
                                .padding()
                                .background(Color.brown.opacity(0.2))
                        })
                    .padding()
                    NavigationLink(
                        destination : ListViewExamp()
                    , label : {
                        Text("Another List View With Section")
                            .font(.title3)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.blue)
                            .padding()
                            .background(Color.brown.opacity(0.2))
                    })
                }
                .padding()
            }
            .navigationTitle(Text("Bu Benim App'im"))
            /*
            .frame(minWidth: width * 0.2,maxWidth: width * 0.8, minHeight: height * 0.1, maxHeight: height * 0.15)
             */
            .padding()
        }
    }
        
}

#Preview {
    ContentView()
}
