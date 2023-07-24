//
//  ContentView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-01.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    init(){isOnboardingViewActive = true}
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    @StateObject var loginManager = LoginManager()
    
    var body: some View {
        
        TabView{
            // This is what should be displayed if hasSeenOnboarding == true
            VStack {
                AuthenticationView()
                    .environmentObject(loginManager)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .alert(isPresented: $loginManager.showAlert) {
                Alert(title: Text("Error"), message: Text(loginManager.errorDescription ?? "Error trying to login with credentials, please try again"))
            }
            // The sliding intro pages that should only be displayed at the first launch of the app
            .fullScreenCover(isPresented: .constant(!hasSeenOnboarding),
                             content: {
                let plistManager = PlistManagerImpl()
                let onboardingContentManager =
                OnboardingContentManagerImpl(manager: plistManager)
                
                OnboardingScreenView(manager: onboardingContentManager) {
                    hasSeenOnboarding = false
                }
            })
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
