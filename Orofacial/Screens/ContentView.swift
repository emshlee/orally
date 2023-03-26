//
//  ContentView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-01.
//

import SwiftUI

struct ContentView: View {
    init(){isOnboardingViewActive = true}
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
