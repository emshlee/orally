//
//  OnboardingScreenView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-27.
//

import SwiftUI
import Firebase

struct Application: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
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

struct OnboardingScreenView: View {

    let manager: OnboardingContentManager
    let handler: OnboardingGetStartedAction
    
    @State private var selected = 0
    
    internal init(manager: OnboardingContentManager,
                  handler: @escaping OnboardingGetStartedAction) {
        self.manager = manager
        self.handler = handler
    }
    
    var body: some View {
        TabView(selection: $selected) {
            
            ForEach(manager.items.indices) { index in
                OnboardingViews(item: manager.items[index],
                                limit: manager.limit,
                                index: $selected,
                                handler: handler)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView(manager: OnboardingContentManagerImpl(manager: PlistManagerImpl())) { }
    }
}
