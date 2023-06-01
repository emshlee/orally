//
//  FAQpage.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import SwiftUI

struct FAQpage: View {
    var FAQ: FAQ
    
    var body: some View {
        ScrollView {
            Image(FAQ.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.top)
            
            VStack(spacing: 30) {
                Text(FAQ.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(FAQ.description)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
                
                if FAQ.name == "What are the four types of teeth?" {
                    
                    VStack {
                        Text("Click on the tooth")
                            .bold()
                            .font(.system(size: 25))
                            .padding()
                        
                        HStack{
                            VStack{
                                NavigationLink(
                                    destination: IncisorPage(),
                                    label: {
                                        Image("incisor")
                                            .resizable()
                                            .frame(width:150, height:200)
                                    })
                                Text("Incisor").font(.system(size: 20))
                            }
                            
                            
                            VStack{
                                NavigationLink(
                                    destination: CaninePage(),
                                    label: {
                                        Image("canine")
                                            .resizable()
                                            .frame(width:150, height:200)
                                    })
                                Text("Canine").font(.system(size: 20))
                            }
                        }
                        
                        HStack{
                            VStack{
                                NavigationLink(
                                    destination: PreMolarPage(),
                                    label: {
                                        Image("preMolar")
                                            .resizable()
                                            .frame(width:150, height:200)
                                    })
                                Text("Pre Molar").font(.system(size: 20))
                            }
                            
                            VStack{
                                NavigationLink(
                                    destination: MolarPage(),
                                    label: {
                                        Image("molar")
                                            .resizable()
                                            .frame(width:150, height:200)
                                    })
                                Text("Molar").font(.system(size: 20))
                            }
                        } // HStack
                    } // VStack
                    .padding(.bottom, 150)
                } // if statement
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}
            
    struct FAQpage_Previews: PreviewProvider {
        static var previews: some View {
            FAQpage(FAQ: FAQList[2])
        }
    }
