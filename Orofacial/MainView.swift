//
//  MainView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import SwiftUI
import Firebase

struct Application: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                OnboardingView()
                AuthenticationView()
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      
      return true
  }
}

struct MainView: View {
        @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
        init(){isOnboardingViewActive = true}
        @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
        @State private var showSignInView: Bool = false
        
        var body: some View {
            TabView {
                HomeView()
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
    
    
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View{
            MainView()
        }
    }

