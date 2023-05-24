//
//  SignInEmailView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

import SwiftUI

@MainActor
final class SignInEmailViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn() {
        // equivalent to assert in Java?
        guard !email.isEmpty, !password.isEmpty else {
            // Do validation such as make password more complex...
            // not good practice to print something to handle
            print("No email or password found.")
            return
        }
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returnedUserData)
            } catch {
                print("Error: \(error)")
            }
        }
    }
}

struct SignInEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    var body: some View {
        VStack {
            TextField("Email", text: $viewModel.email)
                .padding()
                .background(Color("BackgroundColor"))
                .cornerRadius(10)
                .padding(.bottom, 5)
            
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color("BackgroundColor"))
                .cornerRadius(10)
                .padding(.bottom, 40)
            
            
            
            Button {
                // The SignIn method is called when button is clicked
                viewModel.signIn()
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
            .padding()
            .navigationTitle("Sign In With Email")
    }
}

struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignInEmailView()
            .environmentObject(SignInEmailViewModel())
    }
}
