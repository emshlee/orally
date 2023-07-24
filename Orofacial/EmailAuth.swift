//
//  EmailAuth.swift
//  Orofacial
//
//  Created by Tevin Choi on 2023/06/17.
//

import Foundation
import SwiftUI
import FirebaseAuth

struct EmailAuth: View {
    @State private var isLogin = false
    @State var email = ""
    @State var password = ""
    @State var isLoggedIn = false
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    init(){isOnboardingViewActive = true}
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Picker("", selection: $isLogin) {
                    Text("Log In")
                        .tag(true)
                    Text("Create Account")
                        .tag(false)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(EdgeInsets(top: -200, leading: 15, bottom: 0, trailing: 15))
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 280, height: 35, alignment: .center)
                    .padding(EdgeInsets(top: -130, leading: 0, bottom: 0, trailing: 0))
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 280, height: 35, alignment: .center)
                    .padding(EdgeInsets(top: -90, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                    .frame(height: 100)
                
                // 수정: NavigationLink로 전환할 뷰와 isActive 바인딩
                
                NavigationLink{
                    MainView()
                        .navigationBarBackButtonHidden()
                } label: {
//                    Button(
//                        action: {
//                        if isLogin {
//                            loginUser();
//                        } else {
//                            createUser()
//                        }
//                    } , label: {
                        Text(isLogin ? "Log In" : "Create Account")
                            .foregroundColor(.white)
                    }
                .frame(width: 280, height: 45, alignment: .center)
                .background(Color("AccentColor"))
                .cornerRadius(8)
                }
                
                
                
            }
            .navigationTitle(isLogin ? "Welcome Back" : "Sign up here")
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
    
    
    
    
    
    private func loginUser() {
        Auth.auth().signIn(withEmail: email, password: password) { result, err in
            if let err = err {
                print("Failed due to error:", err)
                return
            }
            print("Successfully logged in with ID: \(result?.user.uid ?? "")")
            
            isLoggedIn = true
            
        }
    }
    
    private func createUser() {
        Auth.auth().createUser(withEmail: email, password: password, completion: { result, err in
            if let err = err {
                print("Failed due to error:", err)
                return
            }
            print("Successfully created account with ID: \(result?.user.uid ?? "")")
            
            isLoggedIn = true
        })
    }
}




struct EmailAuth_Previews: PreviewProvider {
    static var previews: some View{
        EmailAuth()
    }
}
