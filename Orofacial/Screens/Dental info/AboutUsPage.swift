//
//  AboutUsPage.swift
//  Orofacial
//
//  Created by Taewon Hwang on 2023-06-24.
//

import SwiftUI

struct AboutUsPage: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Text("About Us")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 90)
               
        
            }
            Spacer()
            Spacer()
            Spacer()
            
            VStack(spacing: 30) {
                
                Text("\nOrally is an orofacial health assesment app which allows user to know more about there current orofacial health through a self assesment test. This app will allow the user to know more about there current health before going to a dentist.\n\n\n\n ...more to write") .padding(.horizontal, 40)
                    
                
            }
          
            .background(Color("ColorBlueDark"))
            .cornerRadius(60)
            
           
        }
        
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct AboutUsPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsPage()
    }
}
