//
//  SelfAssessmentView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-10.
//

import SwiftUI

struct SelfAssessmentView: View {
    
    @StateObject var assessmentManager = AssessmentManager(pAssessment: SelfAssessment())
    
    @State private var currentQuestionIndex = 0
    
    var body: some View {
            VStack(spacing: 40) {
                HStack{
                    Text("Self-assessment")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("AccentColor"))
                    
                    Spacer()
                    
                    Text("\(assessmentManager.index + 1) out of \(assessmentManager.length)")
                        .foregroundColor(Color("AccentColor"))
                }
                ProgressBar(progress: assessmentManager.progress)
                
                VStack(alignment: .center, spacing: 20) {
                    Text(assessmentManager.currentQuestion.text)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    
                    AssessmentAnswerRow(answer: assessmentManager.answerChoices, oneSelected: false, twoSelected: false)
                        .environmentObject(assessmentManager)
                    
                    Spacer()
                    if (assessmentManager.index + 1 == assessmentManager.length) {
                        NavigationLink { SelfEndView(assessmentManager: assessmentManager) } label: {
                            PrimaryButton(text: "End", background: assessmentManager.answerSelected ?
                                          Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                        }
                        .navigationBarBackButtonHidden(true)
                    } else {
                            Button {
                                
                                assessmentManager.goToNextQuestion()
                            } label: {
                                PrimaryButton(text: "Next", background: assessmentManager.answerSelected ?
                                              Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                            }
                            .disabled(!assessmentManager.answerSelected)
                        }
                    Spacer()
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(""))
        }
    }

struct SelfEndView: View {
    @StateObject var assessmentManager: AssessmentManager
    var profileView : ProfileView = ProfileView(scores: [0])
    
    var body: some View {
        VStack {
            Text("The score is: \(assessmentManager.score). The result should be displayed here")
                .padding()
            
            
            NavigationLink {
                ProfileView(scores: profileView.scores + [Double(assessmentManager.score)])
                    .navigationBarBackButtonHidden(true)
            } label: {
                PrimaryButton(text: "Exit")
            }
            .navigationBarBackButtonHidden(true)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BackgroundColor"))
    }
    
}


struct SelfView: View {
    @StateObject var assessmentManager = AssessmentManager(pAssessment: SymptomAssessment())
    
    var body: some View {
//        if assessmentManager.reachedEnd {
//            Text("\(assessmentManager.score)")
//        } else {
            SelfAssessmentView()
            .navigationBarBackButtonHidden(true)
        }
    }

struct SelfView_Previews: PreviewProvider {
    static var previews: some View {
        SelfView()
    }
}

