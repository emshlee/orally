//
//  SymptomView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-18.
//

import SwiftUI

struct SymptomPage: View {
    
    @StateObject var assessmentManager : AssessmentManager
    
    var body: some View {
            VStack(spacing: 40) {
                
                HStack{
                    Text("Symptom Assessment")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("AccentColor"))
                    
                    Spacer()
                    
                    Text("\(assessmentManager.questionIndex + 1) out of \(assessmentManager.length)")
                        .foregroundColor(Color("AccentColor"))
                }
                
                ProgressBar(progress: assessmentManager.progress)
                
                if assessmentManager.currentNode.name != "" {
                    Text(assessmentManager.currentNode.name)
                }
                
                VStack(alignment: .center, spacing: 20) {
                    Text(assessmentManager.currentNode.value[assessmentManager.questionIndex])
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    
                    AssessmentAnswerRow(answer: assessmentManager.answerChoices)
                        .environmentObject(assessmentManager)
                        .onAppear(perform: assessmentManager.resetButtons)
                    
                    Spacer()
                    HStack {
                        Button {
                            assessmentManager.goToPrevious()
                        } label: {
                            PrimaryButton(text: "Back", background: assessmentManager.questionIndex != 0 ?
                                          Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                        }
                        .disabled(assessmentManager.questionIndex == 0)
                        
                        Spacer()
                    
                        
                        if (assessmentManager.questionIndex + 1 == assessmentManager.length) {
                            NavigationLink {
                                EndView(assessmentManager: assessmentManager)
                            } label: {
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
                    }
                    
                    Spacer()
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
            .onAppear(perform: assessmentManager.resetButtons)
        }
    }


struct EndView: View {
    @StateObject var assessmentManager: AssessmentManager
    
    
    var body: some View {
        VStack {
            Text("Your Result")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color("AccentColor"))
                .padding()
            
            if assessmentManager.currentNode.levelNumber == 2 {
                // Disease group should be displayed
                VStack {
                    Text("You are half-way through the symptom assessment! Based on the answers you've provided, it seems that your oral condition belongs to:")
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.top)
                        .padding(.horizontal)
                    
                    ZStack {
                        Color(.white)
                        VStack {
                            Text(assessmentManager.currentNode.name)
                                .font(.title3)
                                .bold()
                                .foregroundColor(.black)
                                .padding(.bottom)
                            
                            Text("Example(s) of conditions belonging to this group:\n")
                                .padding(.horizontal)
                            
                          Text(assessmentManager.currentNode.examples)
                                .background(Color("BackgroundColor"))
                                .bold()
                        }
                    }
                    .frame(maxHeight: 200)
                    .padding()
                    
                    Text("Would you like to continue the symptom assessment?")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(Color("AccentColor"))
                        .padding()
                        .frame(alignment: .center)
                    
                    NavigationLink {
                        SymptomPage(assessmentManager: assessmentManager)
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        PrimaryButton(text: "Continue assessment")
                    }
                    .navigationBarBackButtonHidden(true)
                }
            } else if (assessmentManager.currentNode.levelNumber == 3) {
                VStack {
                    Text("You've reached the end of the assessment")
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.top)
                        .padding(.bottom)
                    
                    Text(assessmentManager.currentNode.value[assessmentManager.questionIndex])
                        .font(.title)
                        .bold()
                        .padding()
                        .padding(.bottom)
                    //fix if needed
                    NavigationLink(destination: EncyclopediaPage(Encyclopedia: EncyclopediaList[13]))  {
                        
                        PrimaryButton(text: "Learn more about your result")
                                   }
                }
            }
            
            NavigationLink {
                HomeView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                PrimaryButton(text: "End assessment")
            }
            .navigationBarBackButtonHidden(true)
            .onTapGesture(perform: assessmentManager.resetAssessment)
        }
        .onAppear(perform: assessmentManager.getScore)
        .onAppear(perform: assessmentManager.getResult)
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
            SymptomPage(assessmentManager: assessmentManager)
            .navigationBarBackButtonHidden(true)
        }
    }

struct SymptomView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomView()
        EndView(assessmentManager: AssessmentManager(pAssessment: SymptomAssessment()))
    }
}
