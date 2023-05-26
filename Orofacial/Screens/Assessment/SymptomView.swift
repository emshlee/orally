//
//  SymptomView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-18.
//

import SwiftUI

struct SymptomPage: View {
    
    @StateObject var assessmentManager = AssessmentManager(pAssessment: SymptomAssessment())
    
        
    @State private var currentQuestionIndex = 0
//    @State private var progress = currentQuestionIndex / symptomAssessment.questions.count * 100
//    @State private var userResponses: [Int: String] = [:]
    
    var body: some View {
            VStack(spacing: 40) {
                HStack{
                    Text("Symptom Assessment")
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
                    
//                    ForEach(assessmentManager.answerChoices, id: \.id) { answer in
//                        AssessmentAnswerRow(answer: answer)
//                            .environmentObject(assessmentManager)
//                    }
                    
                    AssessmentAnswerRow(answer: assessmentManager.answerChoices)
                        .environmentObject(assessmentManager)
                    
                    // should display options
                    // Hard coded for now but it shouldn't be
//                    AssessmentAnswerRow(answer: AssessmentAnswer(text: "Yes", score: 1))
//                        .environmentObject(assessmentManager)
//                    AssessmentAnswerRow(answer: AssessmentAnswer(text: "No", score: 0))
//                        .environmentObject(assessmentManager)
                    
                    Spacer()
                    if (assessmentManager.index + 1 == assessmentManager.length) {
                        NavigationLink { EndView(assessmentManager: assessmentManager)} label: {
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
//                    HStack{
//                        NavigationLink {
//                            // where it should lead to
//                        } label: {
//                            PrimaryButton(text: "Back")
//                        }
//
//                        Spacer()
//
//                        NavigationLink {
//                            // where it should lead to
//                        } label: {
//                            PrimaryButton(text: "Next")
//                        }
//                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        }
    }

struct EndView: View {
    @StateObject var assessmentManager: AssessmentManager
    
    var body: some View {
        VStack {
            Text("The score is: \(assessmentManager.score). The medical condition associated with this score should be displayed here")
                .padding()
            
            NavigationLink {
                HomeView()
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


struct SymptomView: View {
    @StateObject var assessmentManager = AssessmentManager(pAssessment: SymptomAssessment())
    
    var body: some View {
//        if assessmentManager.reachedEnd {
//            Text("\(assessmentManager.score)")
//        } else {
            SymptomPage()
            .navigationBarBackButtonHidden(true)
        }
    }

struct SymptomView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomView()
    }
}
