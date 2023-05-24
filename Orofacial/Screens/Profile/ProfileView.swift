//
//  ProfileView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

import SwiftUI

struct ProfileView: View {
    @State var userSetUp: Bool = true
    
    var body: some View{
        ZStack {
            NavigationView{
                ScrollView {
                    VStack{
                        if userSetUp == false {
                            // User info not set up yet
                                Image("logo-teeth")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 300, height: 200)
                                    .padding(22)
                                    .padding(.top, 80)
                                
                                Text("Welcome!")
                                    .font(.title)
                                    .font(.system(size:50))
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("AccentColor"))
                                    .padding(.bottom, 30)
                                
                                NavigationLink {
                                    ProfileSetUpView(user: UserInfo(userName: "", age: 0, gender: "", sex: ""))
                                } label: {
                                    PrimaryButton(text: "Set up profile")
                                }
                        } else {
                            // Display user information
                            Text("Welcome")
                                .font(.title)
                                .font(.system(size:50))
                                .fontWeight(.heavy)
                                .foregroundColor(Color("AccentColor"))
                                .padding(.top, 30)
                                .padding(.bottom, 30)
                            
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
                        }
                    }
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
