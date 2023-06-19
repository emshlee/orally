//
//  SymptomAssessment.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-18.
//

import Foundation

struct Question {
    var id: Int
    var text: String
    var options: [AssessmentAnswer]
}

class SymptomAssessment : Assessment {
    
    init() {
        super.init(questions: [Question(id: 1, text: "Do you have any pain or difficulty while swallowing or speaking?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]),
                               Question(id: 2, text: "Have you noticed any color changes in your oral tissues?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]),
                               Question(id: 3, text: "Do you have a mouth sore that bleeds easily and/or hasn't healed within two weeks?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]),
                               Question(id: 4, text: "Have you observed any white or red patches anywhere in your mouth?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]),
                               Question(id: 5, text: "Are any of your teeth suddenly becoming loose?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)])
        ], userResponses: [:])
    }
}
