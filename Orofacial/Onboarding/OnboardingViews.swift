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
            GifImage(item.sfSymbol ?? "")
                .frame(width: 200, height: 200)
                .padding(.top, 50)
                .padding(.bottom, 50)
                .font(.system(size: 120, weight: .bold))
            
            Text(item.title ?? "")
                .font(.system(size: 28, weight: .bold))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 17)
                .foregroundColor(.black)
                .padding(.horizontal, 40)
            
            Text(item.content ?? "")
                .font(.system(size: 16, weight: .regular))
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
                .padding(.horizontal, 50)
            
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
            .background(Color("AccentColor"))
            .padding(.top, 30)
            .opacity(index == limit ? 1 : 0)
            .allowsHitTesting(index == limit)
        }
        .padding(.bottom, 150)
    }
}

struct OnboardingViews_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViews(item: OnboardingItem(title: "Welcome to Orally. Your virtual assessment app",
                                             content: "Orally is your trusted app for comprehensive oral health assessment and guidance.",
                                             sfSymbol: "onboarding1"),
                        limit: 0,
                        index: .constant(0)) { }
    }
}
