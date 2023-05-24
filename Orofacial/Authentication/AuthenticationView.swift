//
//  AuthenticationView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

import SwiftUI

struct AuthenticationView: View {
    @EnvironmentObject var loginManager: LoginManager
    
    var body: some View {
        VStack (spacing: 40) {
            switch loginManager.biometryType {
                //faceID is supported
            case .faceID:
                LoginButton(image: "faceid", text: "Login with FaceID")
                    .onTapGesture {
                        Task.init {
                            await loginManager.authenticateWithBiometrics()
                        }
                    }
                //touchID is supported
            case .touchID:
                LoginButton(image: "touchid", text: "Login with TouchID")
                    .onTapGesture {
                        Task.init {
                            await loginManager.authenticateWithBiometrics()
                        }
                    }
            default:
                LoginButton(image: "person.fill", text: "Login with your credentials")
            }
            
            NavigationLink {
               // Sign in with email button should lead to signin email view
                SignInEmailView()
                    .environmentObject(SignInEmailViewModel())
            } label: {
                LoginButton(image: "circle", text: "Login with email")
//                Text("Sign In With Email")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .frame(maxWidth: .infinity)
//                    .frame(height: 55)
//                    .frame(maxWidth: .infinity)
//                    .background(Color.blue)
//                    .cornerRadius(10)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BackgroundColor"))
        .navigationTitle("Sign In")
        
        // BUTTON 2 - ??
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AuthenticationView()
                .environmentObject(LoginManager())
        }
    }
}
