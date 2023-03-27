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
    
    var body: some View {
        
        TabView{
            // This is what should be displayed if hasSeenOnboarding == true
            // ---> Authentication Page
        }
        // The sliding intro pages that should only be displayed at the first launch of the app
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
    
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
