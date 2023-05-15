//
//  ProfileView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

import SwiftUI

struct ProfileView: View {
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
                    Text("Profile")
                        .font(.system(size:30))
                        .bold()
                    Spacer()
                    NavigationLink {
                        SelfAssessmentView()
                            .navigationBarHidden(true)
                    } label: {
                        PrimaryButton(text: "Start self assessment")
                    }
//                    Button("Start self assessment"){
//                        SelfAssessmentView()
//                    }
//                    .foregroundColor(.white)
//                    .frame(width:300, height:50)
//                    .background(Color.black)
//                    .cornerRadius(10)
//                    .font(.system(size:20))
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
            }
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
