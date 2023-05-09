//
//  WhatAreTeeth.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import SwiftUI

struct WhatAreTeeth: View {
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
                    Text("What exactly are teeth?")
                        .font(.system(size: 30))
                        .bold()
                        .padding(30)
                }
                Text("Did you realize that teeth play a crucial role in the digestive process by cutting and crushing food, making it easier to swallow?")
                    .fontWeight(.light)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    .font(.system(size: 20))
                Text("Although teeth may resemble bones, they are actually ectodermal organs, along with your hair, skin, and sweat glands.")
                    .fontWeight(.light)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    .font(.system(size: 20))
            }
        }
    }
}
    
struct WhatAreTeeth_Previews: PreviewProvider {
        static var previews: some View {
            WhatAreTeeth()
        }
    }

