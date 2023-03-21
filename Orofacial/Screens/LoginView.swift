//
//  LoginView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-21.
//

import SwiftUI

struct LoginView: View {
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack (spacing: 16) {
                    Picker(selection: $isLoginMode, label: Text("Picker here")) {
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                        .padding()
                    if !isLoginMode {
                        Button {
                            
                        } label:  {
                            Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                        }
                    }
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .padding(12)
                        .background(Color.white)
                    SecureField("Password", text: $password)
                        .padding(12)
                        .background(Color.white)
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Spacer()
                            Text(isLoginMode ? "Log In" : "Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical, 8)
                                .font(.system(size: 14, weight: .semibold))
                            Spacer()
                        }.background(Color.blue)
                        
                    }
                }
                .padding()
                .backgroundStyle(Color("ColorBlueLight"))
            }
            .navigationTitle(isLoginMode ? "Log In" : "Create Account")
            
        }
    }
}
                

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
