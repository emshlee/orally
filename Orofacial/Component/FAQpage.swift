//
//  FAQpage.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import SwiftUI

struct FAQpage: View {
    var FAQ: FAQ
    
    var body: some View {
        ScrollView {
            Image(FAQ.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.top)
            VStack(spacing: 30) {
                Text(FAQ.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(FAQ.description)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct FAQpage_Previews: PreviewProvider {
    static var previews: some View {
        FAQpage(FAQ: FAQList[0])
    }
}
