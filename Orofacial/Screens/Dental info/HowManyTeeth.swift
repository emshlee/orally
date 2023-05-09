//
//  HowManyTeeth.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import SwiftUI

struct HowManyTeeth: View {
    // For when getting rid of the popup screen
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color("ColorBlueLight")
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(30)
                })
                
                VStack {
                    Text("How many teeth do adults have?")
                        .font(.system(size: 30))
                        .bold()
                        .padding(30)
                }
                Text("The majority of adults have 32 permanent teeth, while some people may have missing teeth (hypodontia) or extra teeth (supernumerary teeth).")
                    .fontWeight(.light)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    .font(.system(size: 20))
                Text("Children usually grow 20 primary teeth between the ages of 4 months to 6 years old, which are eventually replaced by permanent adult teeth.")
                    .fontWeight(.light)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    .font(.system(size: 20))
            }
        }
    }
}

struct HowManyTeeth_Previews: PreviewProvider {
    static var previews: some View {
        HowManyTeeth()
    }
}
