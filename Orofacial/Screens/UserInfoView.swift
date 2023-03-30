//
//  UserInfoView.swift
//  Orofacial
//
//  Created by Minhui Roh on 2023-03-29.
//

import SwiftUI


struct UserInfoView: View {
    var body: some View{
        
        Personal()
        
        
    }
}




struct Personal: View {
    
    
    @State var changePage = false
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    
    // Animation Properties
    @State var firstisTapped = false
    @State var lastisTapped = false
    
    
    
    
    
    
    var body: some View {
        NavigationView{
            ZStack{
                // Navigation Bar
                VStack{
                    
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width:400, height:200)
                        .ignoresSafeArea()
                        .overlay(
                            VStack{
                                Text("Patient Information")
                                    .font(.system(size:25))
                                Spacer()
                                HStack(spacing:0){
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 30, height: 30)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.blue, lineWidth: 3))
                                        .overlay(
                                            Text("1")
                                                .foregroundColor(Color.black))
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width:70, height:2)
                                    Circle()
                                        .fill(Color.gray)
                                        .frame(width: 30, height: 30)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.gray, lineWidth: 3))
                                        .overlay(
                                            Text("2")
                                                .foregroundColor(Color.black))
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width:80, height:2)
                                    Circle()
                                        .fill(Color.gray)
                                        .frame(width: 30, height: 30)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.gray, lineWidth: 3))
                                        .overlay(
                                            Text("3")
                                                .foregroundColor(Color.black))
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width:60, height:2)
                                    Circle()
                                        .fill(Color.gray)
                                        .frame(width: 30, height: 30)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.gray, lineWidth: 3))
                                        .overlay(
                                            Text("4")
                                                .foregroundColor(Color.black))}
                                HStack{
                                    Spacer()
                                    Text("Personal")
                                        .font(.system(size:12))
                                    Spacer()
                                    
                                    Text("Medical History")
                                        .font(.system(size:12))
                                    Spacer()
                                    Text("Dental History")
                                        .font(.system(size:12))
                                    Spacer()
                                    
                                    Text("Confirm")
                                        .font(.system(size:12))
                                    Spacer()
                                    
                                }
                                Spacer()
                                Spacer()
                            })
                    Spacer()
                    
                    
                }
                
                // Personal
                VStack{
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    // First Name text field
                    VStack(alignment: .leading, spacing:4, content: {
                        TextField("", text: $firstName) { (status) in
                            if status{
                                withAnimation(.easeIn){
                                    firstisTapped = true
                                }
                                
                            }
                        } onCommit: {
                            if firstName == ""{
                                withAnimation(.easeOut){
                                    firstisTapped = false
                                }
                            }
                        }
                        .font(.system(size: 20))
                        .padding()
                        .padding(.top,firstisTapped ? 15 : 0)
                        .frame(width: 350, height: 70)
                        .background(
                            Text("First Name")
                                .font(.system(size: 20))
                                .bold()
                                .padding(15)
                                .scaleEffect(firstisTapped ? 0.8 : 1)
                                .offset(x: firstisTapped ? -7 : 0, y: firstisTapped ? -15: 0 )
                                .foregroundColor(.gray)
                            ,alignment: .leading
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 2))
                        
                    })
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .cornerRadius(5)
                    
                    // Last Name text field
                    VStack(alignment: .leading, spacing:4, content: {
                        TextField("", text: $lastName) { (status) in
                            if status{
                                withAnimation(.easeIn){
                                    lastisTapped = true
                                }
                                
                            }
                        } onCommit: {
                            if lastName == ""{
                                withAnimation(.easeOut){
                                    lastisTapped = false
                                }
                            }
                        }
                        .font(.system(size: 20))
                        .padding()
                        .padding(.top,lastisTapped ? 15 : 0)
                        .frame(width: 350, height: 70)
                        .background(
                            Text("Last Name")
                                .font(.system(size: 20))
                                .bold()
                                .padding(15)
                                .scaleEffect(lastisTapped ? 0.8 : 1)
                                .offset(x: lastisTapped ? -7 : 0, y: lastisTapped ? -15: 0 )
                                .foregroundColor(.gray)
                            ,alignment: .leading
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 2))
                        
                    })
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .cornerRadius(5)
                    
                    
                    //Date Picker
                    VStack{
                        DatePicker("Date of Birth", selection: $birthdate, in: ...Date(), displayedComponents: .date)
                            .font(.system(size: 20))
                            .frame(width: 318, height: 40)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 2))
                    }.padding(.vertical,12)
                    
                    Spacer()
                    //Next button
                    Button(action: {
                        self.changePage = true

                    }, label: {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue.opacity(0.5))
                            .frame(width: 300, height: 75)
                            .overlay(
                            Text("Next")
                                .foregroundColor(.black)
                                .font(.system(size : 25))
                                .bold())
                            
                                    
                        
                    })
                    
                    Spacer()
                    Spacer()
                } // end of vstack
                
                NavigationLink(destination: MedicalHistory(), isActive: self.$changePage){EmptyView()}.disabled(true)
            } // end of zstack
        } // end of navigation view
        
    } // end of body
} // end of struct

struct MedicalHistory: View{
    var body: some View{
        // TO BE EDITED
        Text("Medical History")
    }
}

struct DentalHistory: View{
    var body: some View{
        // TO BE EDITED
        Text("Dental History")
    }
}

struct Confirm: View{
    var body: some View{
        // TO BE EDITED
        Text("Confirm")
    }
}



struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
