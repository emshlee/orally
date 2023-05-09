//
//  FAQbutton.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import SwiftUI

struct FAQbutton: View {
    var FAQ: FAQ
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            Image(FAQ.image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 180)
                .scaledToFit()
            
            VStack(alignment: .leading) {
                Text(FAQ.name)
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
    }
}

struct FAQbutton_Previews: PreviewProvider {
    static var previews: some View {
        FAQbutton(FAQ: FAQList[0])
    }
}
