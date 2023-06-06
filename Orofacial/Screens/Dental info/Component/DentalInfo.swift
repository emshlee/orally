//
//  DentalInfo.swift
//  Orofacial
//
//  Created by Yoon on 2023-05-29.
//

import SwiftUI

struct DentalInfo: View {
    var info: Info
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: info.image)) {image in image
                
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(info.title)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .frame(maxWidth: 136)
                            .padding()
                    }
                 
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.blue).opacity(0.3), Color(.blue)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius:15, x: 0, y: 10)
    }
}

struct DentalInfo_Preview: PreviewProvider {
    static var previews: some View {
        DentalInfo(info: Info.all[0])
    }
}
