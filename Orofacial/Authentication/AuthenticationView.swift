//
//  AuthenticationView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        // BUTTON 1 - Sign In with Email
        VStack {
            NavigationLink {
                // Sign in with email button should lead to signin email view
                SignInEmailView()
            } label: {
                Text("Sign In With Email")
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
        .navigationTitle("Sign In")
        
        // BUTTON 2 - ??
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AuthenticationView()
        }
    }
}
