//
//  OnboardingViews.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-27.
//

import SwiftUI

typealias OnboardingGetStartedAction = () -> Void


struct OnboardingViews: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    let item: OnboardingItem
    let limit: Int
    let handler: OnboardingGetStartedAction
    @Binding var index: Int
    
    internal init(item: OnboardingItem,
                  limit: Int,
                  index: Binding<Int>,
                  handler: @escaping OnboardingGetStartedAction) {
        self.item = item
        self.limit = limit
        self._index = index
        self.handler = handler
    }
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: item.sfSymbol ?? "")
                .padding(.bottom, 50)
                .font(.system(size: 120, weight: .bold))
            
            Text(item.title ?? "")
                .font(.system(size: 32, weight: .bold))
                .multilineTextAlignment(.center)
                .padding(.bottom, 2)
                .foregroundColor(.black)
            
            Text(item.content ?? "")
                .font(.system(size: 12, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.bottom, 2)
                .foregroundColor(.gray)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                handler()
            }, label : {
                Text("Get Started")
            })
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(.white)
            .padding(.horizontal, 25)
            .padding(.vertical, 10)
            .background(Color("ColorBlueDark"))
            .padding(.top, 50)
            .opacity(index == limit ? 1 : 0)
            .allowsHitTesting(index == limit)
            .animation(.easeInOut(duration: 0.25))
        }
        .padding(.bottom, 150)
    }
}

struct OnboardingViews_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViews(item: OnboardingItem(title: "Dummy",
                                             content: "Dummy Content",
                                             sfSymbol: "heart"),
                        limit: 0,
                        index: .constant(0)) { }
    }
}
