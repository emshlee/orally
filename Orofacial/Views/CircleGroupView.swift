//
//  CircleGroupView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-21.
//

import SwiftUI

struct CircleGroupView: View {
    @State var ShapeColor : Color
    @State var ShapeOpacity : Double
    @State private var isAnimating: Bool = false
    
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 35)
                .frame(width: 230, height: 200, alignment: .center)
            
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 220, height: 200, alignment: .center)
            
        } //:ZSTACK
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlueLight")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
