//
//  OnboardingView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-20.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    @State private var isAnimating: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("ColorBlueLight")
                    .ignoresSafeArea(.all, edges: .all)
                
                
                VStack (spacing: 20){
                    // MARK: - HEADER
                    
                    VStack(spacing: 0) {
                        Text("Orally")
                            .font(.system(size: 60))
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                        
                        Text("Your daily orofacial pain checker")
                            .font(.title3)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                        
                            .frame(width: 200, height: 100)
                        
                        
                        
                    }
                    .opacity(isAnimating ? 1 : 0)
                    .offset(y : isAnimating ? 0 : -40)
                    .animation(.easeOut(duration: 1), value: isAnimating)
                    
                    // MARK: - CENTER
                    
                    ZStack{
                        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                        
                        Image("logo-teeth")
                            .resizable()
                            .scaledToFit()
                            .opacity(isAnimating ? 1 : 0)
                            .animation(.easeOut(duration: 0.5), value: isAnimating)
                    } //:ZSTACK
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                    // MARK: - FOOTER
                    ZStack {
                        
                        // 1. BACKGROUND (STATIC)
                        Capsule()
                            .fill(Color.white.opacity(0.2))
                        
                        Capsule()
                            .fill(Color.white.opacity(0.2))
                            .padding(8)
                        
                        // 2. CALL TO ACTION
                        Text("Get Started")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .offset(x: 20)
                        
                        // 3. CAPSULE (DYNAMIC WIDTH)
                        HStack {
                            Capsule()
                                .fill(Color("ColorBlueDark"))
                                .frame(width: buttonOffset + 80)
                            Spacer()
                        }
                        
                        // 4. DRAGGABLE CIRCLE
                        
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(Color("ColorBlueDark"))
                                Circle()
                                    .fill(.black.opacity(0.15))
                                    .padding(8)
                            }
                            .foregroundColor(.white)
                            .frame(width: 80, height: 80, alignment: .center)
                            .offset(x: buttonOffset)
                            .gesture(
                                DragGesture()
                                    .onChanged { gesture in
                                        if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                                            buttonOffset = gesture.translation.width
                                        }
                                    }
                                    .onEnded { _ in
                                        withAnimation(Animation.easeOut(duration: 0.4)) {
                                            if buttonOffset > buttonWidth / 2 {
                                                buttonOffset = buttonWidth - 80
                                                isOnboardingViewActive = false
                                                NavigationLink(destination: EmailAuth()){}
                                            } else {
                                                buttonOffset = 0
                                            }
                                        }
                                    }
                            ) //: GESTURE
                            
                            Spacer()
                            
                        }
                        
                        
                    } //: HSTACK
                } //: FOOTER
                .frame(width: buttonWidth, height: 80, alignment: .center)
                .padding()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : 40)
                .animation(.easeOut(duration: 1), value: isAnimating)
            } //: VSTACK
            
            .onAppear(perform: {
                isAnimating = true
            })
        } //: ZSTACK
    }
    
    }


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
