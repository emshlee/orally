//
//  EncyclopediaButton.swift
//  Orofacial
//
//  Created by Taewon Hwang on 2023-05-25.
//


import SwiftUI

struct EncyclopediaButton: View {
    var Encyclopedia: Encyclopedia
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            Image(Encyclopedia.image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 180)
                .scaledToFit()
            
            VStack(alignment: .leading) {
                Text(Encyclopedia.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 3, x: 0, y: 0)
                    .frame(maxWidth: 136)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .frame(width: 180, alignment: .leading)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .frame(width: 180, height: 250)
//        .shadow(radius: 10)
    }
}

struct EncyclopediaButton_Previews: PreviewProvider {
    static var previews: some View {
        EncyclopediaButton(Encyclopedia: EncyclopediaList[0])
    }
}
