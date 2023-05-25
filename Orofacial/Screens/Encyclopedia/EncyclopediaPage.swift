//
//  Condition.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import SwiftUI

struct EncyclopediaPage: View {
    var Encyclopedia: Encyclopedia
    
    var body: some View {
        ScrollView {
            Image(Encyclopedia.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.top)
            VStack(spacing: 30) {
                Text(Encyclopedia.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(Encyclopedia.description)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct EncyclopediaPage_Previews: PreviewProvider {
    static var previews: some View {
        EncyclopediaPage(Encyclopedia: EncyclopediaList[0])
    }
}

