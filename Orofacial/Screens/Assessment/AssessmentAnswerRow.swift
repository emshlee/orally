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
    @State private var oneSelected = false
    @State private var twoSelected = false
    
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
            .onTapGesture {
                // Second option was already selected
                if (twoSelected == true) {
                    twoSelected.toggle()
                    assessmentManager.unSelectAnswer(answer: answer[1])
                } else {
                    oneSelected.toggle()
                }
                oneSelected.toggle()
                
                if !assessmentManager.answerSelected {
                    oneSelected = true
                    assessmentManager.selectAnswer(answer: answer[0])
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
            .onTapGesture {
                if (oneSelected == true) {
                    oneSelected.toggle()
                    assessmentManager.unSelectAnswer(answer: answer[0])
                } else {
                    twoSelected.toggle()
                }
                twoSelected.toggle()
                if !assessmentManager.answerSelected {
                    twoSelected = true
                    assessmentManager.selectAnswer(answer: answer[1])
                }
            }
        }
    }
}
    
    struct AssessmentAnswerRow_Previews: PreviewProvider {
        static var previews: some View {
            AssessmentAnswerRow(answer: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)])
                .environmentObject(AssessmentManager(pAssessment: SymptomAssessment()))
        }
    }

