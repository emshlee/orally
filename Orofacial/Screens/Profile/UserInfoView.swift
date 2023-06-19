//
//  UserInfoView.swift
//  Orofacial
//
//  Created by Minhui Roh on 2023-03-29.
//

import SwiftUI


struct UserInfoView: View {
    @AppStorage("USERNAME_KEY") var username = "Select your username"
    @State var inputUsername: String = ""
    @AppStorage("SEX_KEY") var sex = "Select your sex"
    @State var inputSex: String = "Options"
    @AppStorage("GENDER_KEY") var gender = "Select your gender"
    @State var inputGender: String = "Options"
    @AppStorage("BIRTHDATE_KEY") var birthdate = "Select your date of birth"
    @State var inputBirthdate = Date()
    
    
    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                    .fill(Color("BackgroundColor"))
                    .frame(width:400, height:130)
                    .ignoresSafeArea()
                    
                Spacer()
            }

            
                VStack{
                    VStack{
                        Text("User Information")
                            .font(.system(size:25))
                            .bold()
                    }
                    
                    
                    
                    Spacer()
                    
                    //Username
                    VStack{
                        HStack{
                            Text("Username")
                                .font(.system(size: 20))
                            
                            TextField("Username", text: $inputUsername)
                                .autocorrectionDisabled()
                                .multilineTextAlignment(.trailing)
                            
                        }.frame(width: 318, height: 40)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 2))
                    }
                    .padding(.vertical,5)
                    .padding(.horizontal)
                    
                    
                    // Dropdown Menu for Userinput Sex
                    VStack{
                        HStack{
                            Text("Sex")
                                .font(.system(size: 20))
                            Spacer()
                            Menu{
                                Button(action: {
                                    inputSex = "Male"
                                }, label: {
                                    Text("Male")
                                })
                                Button(action: {
                                    inputSex = "Female"
                                    
                                }, label: {
                                    Text("Female")
                                })
                                Button(action: {
                                    inputSex = "Prefer not to answer"
                                    
                                }, label: {
                                    Text("Prefer not to answer")
                                })
                            }label : {
                                Label(
                                    title: {Text("\(inputSex)")},
                                    icon:{Image(systemName:"chevron.down")}
                                )
                            }.font(.system(size: 20))
                                .foregroundColor(.black)
                            
                        }.frame(width: 318, height: 40)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 2))
                    }
                    .padding(.vertical,5)
                    .padding(.horizontal)
                    
                    
                    //Dropdown Menu for UserInput gender
                    VStack{
                        HStack{
                            Text("Gender")
                                .font(.system(size: 20))
                            Spacer()
                            Menu{
                                Button(action: {
                                    inputGender = "Male"
                                }, label: {
                                    Text("Male")
                                })
                                Button(action: {
                                    inputGender = "Female"
                                    
                                }, label: {
                                    Text("Female")
                                })
                                Button(action: {
                                    inputGender = "Non-Binary"
                                    
                                }, label: {
                                    Text("Non-Binary")
                                })
                                Button(action: {
                                    inputGender = "Prefer not to answer"
                                    
                                }, label: {
                                    Text("Prefer not to answer")
                                })
                            }label : {
                                Label(
                                    title: {Text("\(inputGender)")},
                                    icon:{Image(systemName:"chevron.down")}
                                )
                            }.font(.system(size: 20))
                                .foregroundColor(.black)
                            
                        }.frame(width: 318, height: 40)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 2))
                    }
                    .padding(.vertical,5)
                    .padding(.horizontal)
                    
                    
                    
                    
                    
                    
                    //Date Picker
                    VStack{
                        DatePicker("Date of Birth", selection: $inputBirthdate, in: ...Date(), displayedComponents: .date)
                            .font(.system(size: 20))
                            .frame(width: 318, height: 40)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 2))
                    }.padding(.vertical,5)
                    
                    Spacer()
                    Spacer()
                    
                    
                    
                    
                    //Save button
                    VStack{
                        Button(action: {
                            username = inputUsername
                            sex = inputSex
                            gender = inputGender
                            birthdate = inputBirthdate.asString()})
                        {
                            Text("Save")
                                .font(.system(size:20))
                                .bold()
                            }
                    }
                    
                    
                    
                    //User Info Summary
                        Form{
                            HStack{
                                Text("Username")
                                Spacer()
                                Text(username)
                            }
                            HStack{
                                Text("Sex")
                                Spacer()
                                Text(sex)
                            }
                            HStack{
                                Text("Gender")
                                Spacer()
                                Text(gender)
                            }
                            HStack{
                                Text("Date of Birth")
                                Spacer()
                                Text(birthdate)
                                
                            }
                            
                        }
                }
            

                
             // end of vstack
        }
                
                

    } // end of body
    
    
} // end of struct

extension Date {
    func asString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: self)
    }
}




struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
