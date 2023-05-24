//
//  ProfileSetUpView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-15.
//

import SwiftUI

struct ProfileSetUpView: View {
    var user: UserInfo
    @State var sex: String = "Select"
    @State var gender: String = "Select"
    @State var age: Int = 0
    let sexOptions: [String] = ["Male", "Female", "Prefer not to say"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Text("User information")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("AccentColor"))
                        .frame(alignment: .center)
                    
                    Spacer()
                    
                    // Dropdown Menu for Userinput Sex
                    HStack {
                        Text("Sex")
                            .font(.title2)
                            .padding(.horizontal)
                        Spacer()
                        Picker(
                            selection: $sex,
                            label:
                                HStack {
                                    Text("")
                                    Text(sex)
                                }
                                .frame(width: 318, height: 40)
                                .padding()
                                .padding(.horizontal)
                                .background(Color("AccentColor"))
                                .cornerRadius(10)
                            , content: {
                                ForEach(sexOptions, id: \.self) { option in
                                    Text(option)
                                        .tag(option)
                                }
                            }
                        )
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
//            .background(Color("BackgroundColor"))
        }
        }
                    
                    }


struct ProfileSetUpView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSetUpView(user: UserInfo(userName: "", age: 0, gender: "", sex: ""))
    }
}
