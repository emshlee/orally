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
                            
                            Spacer()
                            Text("Hi, I'm Orally. \nI can help you learn more about your oral health.")
                                .font(.system(size: 28))
                                .bold()
                                .padding(.horizontal, 30)
                                .padding(.vertical, 45)
                                .padding(.bottom, -22)
                            
                            Button("Start Symptom Assessment"){
                                //button action
                            }
                            .foregroundColor(.white)
                            .frame(width:300, height:50)
                            .background(Color.black)
                            .cornerRadius(10)
                            .font(.system(size:20))
                        }
                        .padding(.vertical, 50)
                        
                        VStack {
                            Text("Frequently Asked Questions")
                                .font(.system(size: 20))
                                .bold()
                            var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
                            LazyVGrid(columns: columns, spacing: 20) {
                                ForEach(FAQList, id: \.id) {
                                    FAQ in
                                    NavigationLink(destination: FAQpage(FAQ: FAQ)) {
                                        FAQbutton(FAQ: FAQ)
                                    }
                                }
                            }
                            .padding()
                        }
                        
//                        VStack {
//                            Button("What exactly are teeth?") {
//                                showNewScreen.toggle()
//                            }
//                            // BUTTON DESIGN (TO BE CHANGED)
//                            .foregroundColor(.white)
//                            .frame(width:300, height:150)
//                            .background(Color.gray)
//                            .cornerRadius(10)
//                            .font(.system(size:20))
//                            .sheet(isPresented: $showNewScreen, content: { WhatAreTeeth()
//                            })
//
//
//                            Spacer()
//
//                            Button("How many teeth do adults have?") {
//                                showNewScreen.toggle()
//                            }
//                            // BUTTON DESIGN (TO BE CHANGED)
//                            .foregroundColor(.white)
//                            .frame(width:300, height:150)
//                            .background(Color.gray)
//                            .cornerRadius(10)
//                            .font(.system(size:20))
//                            .sheet(isPresented: $showNewScreen, content: { WhatAreTeeth()
//                            })
//                        }
//                        .padding(.top, 50)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
