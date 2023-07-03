//
//  SelfAssessmentView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-10.
//

//import SwiftUI
//
//struct SelfAssessmentView: View {
//
//    @StateObject var assessmentManager = AssessmentManager(pAssessment: SelfAssessment())
//
//    @State private var currentQuestionIndex = 0
//
//    var body: some View {
//            VStack(spacing: 40) {
//
//                HStack{
//                    Text("Self Assessment")
//                        .font(.title)
//                        .fontWeight(.heavy)
//                        .foregroundColor(Color("AccentColor"))
//
//                    Spacer()
//
//                    Text("\(assessmentManager.index + 1) out of \(assessmentManager.length)")
//                        .foregroundColor(Color("AccentColor"))
//                }
//                ProgressBar(progress: assessmentManager.progress)
//
//                VStack(alignment: .center, spacing: 20) {
//                    Text(assessmentManager.currentQuestion.text)
//                        .font(.system(size: 20))
//                        .bold()
//                        .foregroundColor(.gray)
//                        .padding(.bottom)
//
//                    AssessmentAnswerRow(answer: assessmentManager.answerChoices)
//                        .environmentObject(assessmentManager)
//
//                    Spacer()
//                    HStack {
//                        Button {
//                            assessmentManager.goToPrevious()
//                        } label: {
//                            PrimaryButton(text: "Back", background: assessmentManager.index != 0 ?
//                                          Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
//                        }
//                        .disabled(assessmentManager.index == 0)
//
//                        Spacer()
//
//
//                        if (assessmentManager.index + 1 == assessmentManager.length) {
//                            NavigationLink {
//                                SelfEndView(assessmentManager: assessmentManager)
//                            } label: {
//                                PrimaryButton(text: "End", background: assessmentManager.answerSelected ?
//                                              Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
//                            }
//                            .navigationBarBackButtonHidden(true)
//
//                        } else {
//                            Button {
//                                assessmentManager.goToNextQuestion()
//                            } label: {
//                                PrimaryButton(text: "Next", background: assessmentManager.answerSelected ?
//                                              Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
//                            }
//                            .disabled(!assessmentManager.answerSelected)
//                        }
//                    }
//
//                    Spacer()
//                }
//            }
//            .padding()
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color("BackgroundColor"))
//        }
//    }
//
//struct SelfEndView: View {
//    @StateObject var assessmentManager: AssessmentManager
//    var profileView : ProfileView = ProfileView(scores: [0])
//
//    var body: some View {
//        VStack {
//            Text("Your Score:")
//                .padding()
//
//            Text("\(assessmentManager.score)")
//                .padding()
//
//            Text("The interpretation should be displayed here.")
//                .padding(.bottom, 60)
//
//            NavigationLink {
//                ProfileView(scores: profileView.scores + [Double(assessmentManager.score)])
//                    .navigationBarBackButtonHidden(true)
//            } label: {
//                PrimaryButton(text: "Exit")
//            }
//            .navigationBarBackButtonHidden(true)
//        }
//        .onAppear(perform: assessmentManager.getScore)
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color("BackgroundColor"))
//    }
//
//}
//
//
//struct SelfView: View {
//    @StateObject var assessmentManager = AssessmentManager(pAssessment: SelfAssessment())
//
//    var body: some View {
//            SelfAssessmentView()
//            .navigationBarBackButtonHidden(true)
//        }
//    }
//
//struct SelfView_Previews: PreviewProvider {
//    static var previews: some View {
//        SelfView()
//        SelfEndView(assessmentManager: AssessmentManager(pAssessment: SelfAssessment()))
//    }
//}

