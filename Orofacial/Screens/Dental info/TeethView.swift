////
////  TeethView.swift
////  Orofacial
////
////  Created by Tevin Choi on 2023/06/01.
////
//
//import Foundation


//
//  TeethView.swift
//  Orofacial
//
//  Created by Tevin Choi on 2023/05/31.
//

import Foundation

import SwiftUI

//struct TeethView: View {
//
//    var body: some View {
//
////        VStack{
////            Text("Types of Teeth")
////
////            NavigationView{
////
////                HStack{
////                    NavigationLink(destination: IncisorView()){
////                        Button{
////                            //                    Image("incisor")
////                            Text("incisor")
////                        }
////                    }
////                }
////            } //navigation view
////        }
//        NavigationView {
//            NavigationLink(destination: IncisorView())
//                    Button {
//                       print("in")
//                    } label: {
//                        Image("incisor")
//                            .resizable()
//                            .scaledToFit()
//                    }
//                    .buttonStyle(PlainButtonStyle())
//
//                  .navigationTitle("Navigation")
//                }
//
//
//
//    }
//
//}
//



struct TeethView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack{
                    VStack{
                        NavigationLink(
                            destination: IncisorPage(),
                            label: {
                                Image("incisor")
                                    .resizable()
                                    .frame(width:150, height:200)
                            })
                        Text("Incisor").font(.system(size: 30))
                    }
                    VStack{
                        NavigationLink(
                            destination: CaninePage(),
                            label: {
                                Image("canine")
                                    .resizable()
                                    .frame(width:150, height:200)
                            })
                        Text("Canine").font(.system(size: 30))
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
                        Text("Pre Molar").font(.system(size: 30))
                            
                    }
                    
                    VStack{
                        NavigationLink(
                            destination: MolarPage(),
                            label: {
                                Image("molar")
                                    .resizable()
                                    .frame(width:150, height:200)
                            })
                        Text("Molar").font(.system(size: 30))
                    }
                }
                
                
            }
            .navigationBarTitle("Types of Teeth")
        }
       
    }
}



struct IncisorPage: View {
    var body: some View{
        VStack {
                        Text("Incisors")
                .font(.title)
                        Spacer()
                        Text("Incisors are the most noticeable teeth in your mouth. Typically, people have four incisors on both the upper and lower jaws. These teeth have a narrow edge that helps to cut food when you bite.")
                .padding(50)
                .font(.system(size: 25))
                

                        Spacer()

                    }
    }
}


struct CaninePage: View {
        var body: some View {
            VStack {
                Text("Canines")
                    .font(.title)
                Spacer()
                Text("Canines, often referred to as \"eye teeth,\" get their name from their resemblance to a dog's fangs. They are pointy and used for tearing into foods like meat and crunchy vegetables. Most people have four canines - one in each quadrant.")
                    .padding(50)
                    .font(.system(size: 25))
                
                Spacer()

            }
        }
    }



    struct PreMolarPage: View {
        var body: some View {
            VStack {
                Text("PreMolars")
                    .font(.title)
                Spacer()
                Text("Premolars, also known as bicuspids, sit between your canines and molars. They have features of both canines and molars, enabling them to tear, crush, and grind food into smaller pieces.")
                    .padding(50)
                    .font(.system(size: 25))

                Spacer()

            }
        }
    }



struct MolarPage: View {
    var body: some View {
        VStack {
            Text("Molars")
                .font(.title)
            Spacer()
            Text("Molars are located at the very back of your mouth and serve as your primary chewing teeth, responsible for about 90% of the process. Adults typically have 12 molars - three in each quadrant - including wisdom teeth, also known as third molars. If you don't have wisdom teeth, you likely have eight molars in total. Molars are ideal for crushing and grinding food.")
                .padding(50)
                .font(.system(size: 25))
            
            Spacer()
            
        }
    }
    
    
}


struct TeethView_Previews: PreviewProvider {
    static var previews: some View {
        TeethView()
    }
}


