//
//  AssessmentAnswerRow.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import SwiftUI

struct AssessmentAnswerRow: View {
    @EnvironmentObject var assessmentManager: AssessmentManager
    
    var answer: [AssessmentAnswer]
    @State var oneSelected: Bool
    @State var twoSelected: Bool
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer[0].text)
                    .bold()
                
                if oneSelected {
                    Spacer()
                    
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color("AccentColor"))
            .background(.white)
            .cornerRadius(10)
            .shadow(color: oneSelected ? Color("AccentColor") : .gray, radius: 5, x: 0.5, y: 0.5)
            .onAppear(perform: {
                oneSelected = false
                twoSelected = false
            })
            .onTapGesture {
                // Second option was already selected
                print("Before clicking, option1: \(oneSelected), option2: \(twoSelected)")
                if (twoSelected == true) {
                    twoSelected.toggle()
                    assessmentManager.unSelectAnswer(answer: answer[1])
                }
                
                oneSelected.toggle()
                
                print("After clicking, option1: \(oneSelected), option2: \(twoSelected)\n")
                
                if oneSelected {
                    assessmentManager.selectAnswer(answer: answer[0])
                } else {
                    assessmentManager.unSelectAnswer(answer: answer[0])
                }
            }
            
            
            
            HStack(spacing: 20) {
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer[1].text)
                    .bold()
                
                if twoSelected {
                    Spacer()
                    
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color("AccentColor"))
            .background(.white)
            .cornerRadius(10)
            .shadow(color: twoSelected ? Color("AccentColor") : .gray, radius: 5, x: 0.5, y: 0.5)
            .onAppear(perform: {
                oneSelected = false
                twoSelected = false
            })
            .onTapGesture {
                if (oneSelected == true) {
                    oneSelected.toggle()
                    assessmentManager.unSelectAnswer(answer: answer[0])
                }
                
                twoSelected.toggle()
                
                if twoSelected {
                    assessmentManager.selectAnswer(answer: answer[0])
                } else {
                    assessmentManager.unSelectAnswer(answer: answer[0])
                }
            }
        }
    }
}
    
    struct AssessmentAnswerRow_Previews: PreviewProvider {
        static var previews: some View {
            AssessmentAnswerRow(answer: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)], oneSelected: false, twoSelected: false)
                .environmentObject(AssessmentManager(pAssessment: SymptomAssessment()))
        }
    }

