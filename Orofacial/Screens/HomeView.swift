//
//  HomeView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-20.
//

import SwiftUI
struct Home: View {
    var body: some View{
        NavigationView{
            ZStack{
                // Image("HomeBackground")
                //    .resizable()
                //    .ignoresSafeArea(.all, edges: .top)
                //    .frame(width:400, height:710)
                VStack{
                    Spacer()
                    Spacer()
                    Text("Hi, I'm Orally. \nI can help you learn more about your oral health.")
                        .font(.system(size:30))
                        .bold()
                    Spacer()
                    Button("Start Symptom Assessment"){
                        //button action
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.system(size:20))
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
        
    }
}

struct Profile: View {
    var body: some View{
        NavigationView{
            ZStack{
                // Image("HomeBackground")
                //    .resizable()
                //    .ignoresSafeArea(.all, edges: .top)
                //    .frame(width:400, height:710)
                VStack{
                    Spacer()
                    Spacer()
                    Text("Profile")
                        .font(.system(size:30))
                        .bold()
                    Spacer()
                    Button("Button"){
                        //button action
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.system(size:20))
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
        
    }
}

struct Encyclopedia: View {
    var body: some View{
        NavigationView{
            ZStack{
                // Image("HomeBackground")
                //    .resizable()
                //    .ignoresSafeArea(.all, edges: .top)
                //    .frame(width:400, height:710)
                VStack{
                    Spacer()
                    Spacer()
                    Text("Encyclopedia")
                        .font(.system(size:30))
                        .bold()
                    Spacer()
                    Button("Button"){
                        //button action
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.system(size:20))
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
        
    }
}

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        TabView {
            Home()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")}
            
            Profile()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("Profile")}
           // Text("Clinic")
           //     .tabItem{
           //         Image(systemName: "cross.case")
           //         Text("Clinic")}
            
            Encyclopedia()
                .tabItem{
                    Image(systemName: "book")
                    Text("Encyclopedia")}
            
        }
    }
}
        


struct HomeView_Previews: PreviewProvider {
    static var previews: some View{
        HomeView()
    }
}
