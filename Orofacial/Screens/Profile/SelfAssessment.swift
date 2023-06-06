//
//  SelfAssessment.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-06-05.
//

import Foundation

class SelfAssessment : Assessment {
    
    init() {
        super.init(questions: [Question(id: 1, text: "SelfAssessment question 1",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]),
                               Question(id: 2, text: "SelfAssessment question 2",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]),
                               Question(id: 3, text: "SelfAssessment question 3",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]),
                               Question(id: 4, text: "SelfAssessment question 4",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]),
                               Question(id: 5, text: "SelfAssessment question 5",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)])
        ], userResponses: [:])
    }
}
