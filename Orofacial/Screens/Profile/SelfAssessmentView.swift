//
//  SelfAssessmentView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-10.
//

import SwiftUI

struct SelfAssessmentView: View {
    
    var body: some View {
        VStack(spacing: 40) {
            HStack{
                Text("Self-Assessment")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("AccentColor"))
                
                Spacer()
                
                Text("1 out of 12")
                    .foregroundColor(Color("AccentColor"))
                
                
            }
            ProgressBar(progress: 40)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Are you being treated for any medical condition at the present or have been treated within the past year?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                // should display options
                // Hard coded for now but it shouldn't be
                AssessmentAnswerRow(answer: AssessmentAnswer(text: "Yes", score: 1))
                AssessmentAnswerRow(answer: AssessmentAnswer(text: "No", score: 0))
                
                Spacer()
                HStack{
                    NavigationLink {
                        // where it should lead to
                    } label: {
                        PrimaryButton(text: "Back")
                    }
                    
                    Spacer()
                    
                    NavigationLink {
                        // where it should lead to
                    } label: {
                        PrimaryButton(text: "Next")
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BackgroundColor"))
    }
}

struct SelfAssessmentView_Previews: PreviewProvider {
    static var previews: some View {
        SelfAssessmentView()
    }
}
