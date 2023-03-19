//
//  CardView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-18.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing : 20){
                // CONDITION: IMAGE
                Image("periodontis")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                // CONDITION: TITLE
                Text("Condition number 1")
                // CONDITION: HEADLINE
                // BUTTON: START
                
            } //: VStack
        } //: ZStack
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueLight"), Color("ColorBlueDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
    
    // MARK: - PREVIEW
    
    struct CardView_Previews: PreviewProvider {
        static var previews: some View {
            CardView()
        }
    }
}
