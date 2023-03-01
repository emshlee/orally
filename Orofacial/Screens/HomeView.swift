//
//  HomeView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-20.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        VStack(spacing: 20){
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                // Some action
                isOnboardingViewActive = true
            }) {
            Text("Restart")
            }
        } //: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
