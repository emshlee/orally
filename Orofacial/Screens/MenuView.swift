//
//  MenuView.swift
//  Orofacial
//
//  Created by Minhui Roh on 2023-03-24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(spacing:20){
            Button {
                //Action for the button
            } label: {
                //How the button looks like
                RoundedRectangle (cornerRadius: 10)
                    .fill(Color.pink)
                    .frame(width: 240, height: 90)
            }
            Button {
                //Action for the button
            } label: {
                //How the button looks like
                RoundedRectangle (cornerRadius: 10)
                    .fill(Color.pink)
                    .frame(width: 240, height: 90)
            }
            Button {
                //Action for the button
            } label: {
                //How the button looks like
                RoundedRectangle (cornerRadius: 10)
                    .fill(Color.pink)
                    .frame(width: 240, height: 90)
            }
            Button {
                //Action for the button
            } label: {
                //How the button looks like
                RoundedRectangle (cornerRadius: 10)
                    .fill(Color.pink)
                    .frame(width: 240, height: 90)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View{
        MenuView()
    }
}
