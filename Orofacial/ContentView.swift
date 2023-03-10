//
//  ContentView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.68, green: 0.89, blue: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Orofacial")
                    .font(Font.custom("KronaOne-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("Content??")
            }
        }
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
