//
//  AssessmentAnswerRow.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import SwiftUI

struct AssessmentAnswerRow: View {
    @EnvironmentObject var assessmentManager: AssessmentManager
    
    var answer: [AssessmentAnswer] = [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]
    static var oneSelected: Bool = false
    static var twoSelected: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer[0].text)
                    .bold()
                
                if AssessmentAnswerRow.oneSelected {
                    Spacer()
                    
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color("AccentColor"))
            .background(.white)
            .cornerRadius(10)
            .shadow(color: AssessmentAnswerRow.oneSelected ? Color("AccentColor") : .gray, radius: 5, x: 0.5, y: 0.5)
        
            .onTapGesture {
                // Second option was already selected
                if (AssessmentAnswerRow.twoSelected == true) {
                    AssessmentAnswerRow.twoSelected.toggle()
                    assessmentManager.unSelectAnswer(answer: answer[1])
                }
                
                AssessmentAnswerRow.oneSelected.toggle()
                
                if AssessmentAnswerRow.oneSelected {
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
                
                if AssessmentAnswerRow.twoSelected {
                    Spacer()
                    
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color("AccentColor"))
            .background(.white)
            .cornerRadius(10)
            .shadow(color: AssessmentAnswerRow.twoSelected ? Color("AccentColor") : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                if (AssessmentAnswerRow.oneSelected == true) {
                    AssessmentAnswerRow.oneSelected.toggle()
                    assessmentManager.unSelectAnswer(answer: answer[0])
                }
                
                AssessmentAnswerRow.twoSelected.toggle()
                
                if AssessmentAnswerRow.twoSelected {
                    assessmentManager.selectAnswer(answer: answer[1])
                } else {
                    assessmentManager.unSelectAnswer(answer: answer[1])
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

