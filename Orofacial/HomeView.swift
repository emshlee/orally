//
//  HomeView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-20.
//

import SwiftUI


struct Home: View {
    
    var body: some View{
        NavigationView{
            ZStack{
                // To set up background image:
                // Image("HomeBackground")
                //    .resizable()
                //    .ignoresSafeArea(.all, edges: .top)
                //    .frame(width:400, height:710)
                VStack{
                    Spacer()
                    Spacer()
                    Text("Hi, I'm Orally. \nI can help you learn more about your oral health.")
                        .font(.system(size:30))
                        .bold()
                    Spacer()
                    Button("Start Symptom Assessment"){
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
    
    
    struct HomeView: View {
        @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
        init(){isOnboardingViewActive = true}
        @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
        @State private var showSignInView: Bool = false
        
        var body: some View {
            TabView {
                Home()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")}
                
                ProfileView()
                    .tabItem{
                        Image(systemName: "person.crop.circle")
                        Text("Profile")}
                // Text("Clinic")
                //     .tabItem{
                //         Image(systemName: "cross.case")
                //         Text("Clinic")}
                
                EncyclopediaView()
                    .tabItem{
                        Image(systemName: "book")
                        Text("Encyclopedia")}
                
                SettingsView(showSignInView: $showSignInView)
                    .tabItem{
                        Image(systemName: "??")
                        Text("Settings")}
            }
            
            // If onboarding screen hasn't been displayed yet
            .fullScreenCover(isPresented: .constant(!hasSeenOnboarding),
                             content: {
                let plistManager = PlistManagerImpl()
                let onboardingContentManager =
                OnboardingContentManagerImpl(manager: plistManager)
                
                OnboardingScreenView(manager: onboardingContentManager) {
                    hasSeenOnboarding = true
                }
            })
        }
    }
    
    
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View{
            HomeView()
        }
    }
}
