//
//  ProfileView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

import SwiftUI

struct ProfileView: View {
    @State var userSetUp: Bool = true
    
    var scores : [Double] = [0.0]
    
    var body: some View{
        ZStack {
            NavigationView{
                ScrollView {
                    VStack{
                        if userSetUp == false {
                            // User info not set up yet
                            Image("AppLogo")
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
                            
                            Logo()
                                .padding()
                            
//                            Text("Welcome.")
//                                .font(.title)
//                                .font(.system(size:50))
//                                .fontWeight(.heavy)
//                                .foregroundColor(Color("AccentColor"))
//                                .padding(.top, 30)
//                                .padding(.bottom, 30)
                            NavigationLink {
                                UserInfoView()
                                    //.navigationBarHidden(true)
                            } label: {
                                PrimaryButton(text: "Manage User Info")
                            }
                            
                            NavigationLink {
                                SelfAssessmentView()
                                    .navigationBarHidden(true)
                            } label: {
                                PrimaryButton(text: "Start self assessment")
                            }
                            checkup()
                        }
                    }
                }
            }
        }
        
    }
}
struct checkup: View {
    @State var checkUpDate = Date()
    @State var nextCheckUpDate = Date()

    var body: some View {
        VStack(alignment: .center) {
            Image("calendarlogo2")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
                .padding(.top, 20)
            
            Text("Check Up Reminder")
                .bold()
                .font(.title)
                .background(Color("BackgroundColor"))
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(60.0)
            
            Text("Your Last Assessment Date")
                .bold()
                .padding()
                .background(Color("BackgroundColor"))
                .cornerRadius(60.0)
            
            VStack {
                DatePicker("Last Assessment", selection: $checkUpDate, in: ...Date(), displayedComponents: .date)
                    .font(.system(size: 20))
                    .frame(width: 300, height: 40)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }
            
            Text("Your Next Assessment Date")
                .bold()
                .padding()
            
            Text(nextCheckUpDate, format: .dateTime.day().month().year())
                .padding()
            
        }
        .padding()
        .padding(.top)
        .padding(.bottom, 50)
        .background(Color("BackgroundColor"))
        .cornerRadius(60.0)
        .onAppear {
            nextDate()
        }
    }
    
    func nextDate() {
        let calendar = Calendar.current
        let nextDate = calendar.date(byAdding: .day, value: 180, to: checkUpDate)
        nextCheckUpDate = nextDate ?? Date()
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
