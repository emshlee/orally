//
//  LoginButton.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-15.
//

import SwiftUI

struct LoginButton: View {
    var image: String?
    var showImage = true
    var text: String
    var body: some View {
        HStack {
            if showImage {
                Image(systemName: image ?? "person.fill")
            }
            
            Text(text)
        }
        .padding()
        .padding(.horizontal)
        .background(.white)
        .cornerRadius(30)
        .shadow(radius: 10)
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton(image: "faceid", text: "Login with FaceID")
    }
}
