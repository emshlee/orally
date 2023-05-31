//
//  HomeView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import SwiftUI

struct HomeView: View {
    // True when popover activated for FAQs
    @State var showNewScreen: Bool = false
    
    var body: some View{
        NavigationView{
            ZStack{
                // To set up background image:
                // Image("HomeBackground")
                //    .resizable()
                //    .ignoresSafeArea(.all, edges: .top)
                //    .frame(width:400, height:710)
                ScrollView (.vertical) {
                    VStack{
                        VStack{
                            Image("AppLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300)
                            
                            Text("Learn more about your oral health")
                                .font(.system(size: 20))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 8)
//                                .padding(.bottom)
                            
                            NavigationLink {
                                // where it should lead to
                                SymptomView()
                            } label: {
                                PrimaryButton(text: "Start Symptom Assessment")
                            }
                            .padding()
                            
                            NavigationLink {
                                // where it should lead to
                                DentalInfoPage()
                            } label: {
                                DentalInfoButton()
                            }
                            
                    
                        }
                        .padding(.top, 30)
                        .padding(.bottom, 80)
                        
                        // Basic dental care
                        
                        FAQView()
                                                    
                        
                    }
                }
            }
//            .background(Color("BackgroundColor"))
        }
    }
}
struct FAQView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("QuestionMark")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
                .padding(.top, 20)
            
            Text("Frequently Asked Questions")
                .bold()
                .padding(.bottom, 40)
                .padding(.top, 10)
                
            
            var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(FAQList, id: \.id) {
                    FAQ in
                    NavigationLink(destination: FAQpage(FAQ: FAQ)) {
                        FAQbutton(FAQ: FAQ)
                    }
                }
            }
        }
        .padding()
        .padding(.top)
        .padding(.bottom, 500)
        .background(Color("BackgroundColor"))
        .cornerRadius(60.0)
    }
}
            
            
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}