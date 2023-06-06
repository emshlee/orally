//
//  DentalInfoView.swift
//  Orofacial
//
//  Created by Yoon on 2023-06-05.
//

import SwiftUI

struct DentalInfoView: View {
    var info: Info
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: info.image)) { image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: UnitPoint.top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(info.title)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct DentalInfoView_Preview: PreviewProvider {
    static var previews: some View {
        DentalInfoView(info: Info.all[0])
    }
}
