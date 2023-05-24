//
//  AssessmentAnswerRow.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import SwiftUI

struct AssessmentAnswerRow: View {
    @EnvironmentObject var assessmentManager: AssessmentManager
    
    var answer: AssessmentAnswer
    @State private var isSelected = false
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(Color("AccentColor"))
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? Color("AccentColor") : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            isSelected.toggle()
            if !assessmentManager.answerSelected {
                isSelected = true
                assessmentManager.selectAnswer(answer: answer)
            }
        }
    }
}

struct AssessmentAnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentAnswerRow(answer: AssessmentAnswer(text: "Yes", score: 1))
            .environmentObject(AssessmentManager(pAssessment: SymptomAssessment(questions: [Question(id: 1, text: "Do you have a fever?", options: []), Question(id: 2, text: "Are you experiencing coughing?", options: [])], userResponses: [ : ])))
    }
}
