//
//  EncyclopediaView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

import SwiftUI

struct EncyclopediaView: View {
    var body: some View{
        NavigationView{
            ZStack{
                // Image("HomeBackground")
                //    .resizable()
                //    .ignoresSafeArea(.all, edges: .top)
                //    .frame(width:400, height:710)
                VStack{
                    Spacer()
                    Spacer()
                    Text("Encyclopedia")
                        .font(.system(size:30))
                        .bold()
                    Spacer()
                    Button("Button"){
                        //button action
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.system(size:20))
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
        
    }
}

struct EncyclopediaView_Previews: PreviewProvider {
    static var previews: some View {
        EncyclopediaView()
    }
}
