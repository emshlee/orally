//
//  DentalInfoButton.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-24.
//

import SwiftUI

struct DentalInfoButton: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("HomeBackground")
                .resizable()
                .cornerRadius(20)
                .frame(width: 330)
                .scaledToFit()
            
            VStack(alignment: .leading) {
                Text("hello")
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
        .frame(width: 180, height: 200)
    }
}

struct DentalInfoButton_Previews: PreviewProvider {
    static var previews: some View {
        DentalInfoButton()
    }
}
