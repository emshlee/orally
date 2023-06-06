//
//  Logo.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-06-05.
//

import SwiftUI

struct Logo: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack{
            Image("AppLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 350)
        } //:ZSTACK
        .frame(width: 200, height: 200)
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 0.5), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
