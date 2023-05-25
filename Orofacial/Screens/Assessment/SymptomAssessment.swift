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
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 2)]),
                               Question(id: 2, text: "Have you noticed any color changes in your oral tissues?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 2)]),
                               Question(id: 3, text: "Do you have a mouth sore that bleeds easily and/or hasn't healed within two weeks?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 2)]),
                               Question(id: 4, text: "Have you observed any white or red patches anywhere in your mouth?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 2)]),
                               Question(id: 5, text: "Are any of your teeth suddenly becoming loose?",
                                        options: [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 2)])
        ], userResponses: [:])
    }
}
    
    
//    override init(questions: [Question], userResponses: [Int : String]) {
//        super.init(questions: questions, userResponses: userResponses)
//    }
    
//    override var questions: [Question] = [
//        Question(id: 1, text: "Do you have a fever?", options: ["Option1", "Option2"]),
//        Question(id: 2, text: "Are you experiencing coughing?", options: ["Option1", "Option2"]),
//        // Add more questions as needed
//    ]
//    override var userResponses: [Int: String] = [:]
    
//    override func loadQuestions() {
//        questions = [
//            Question(id: 1, text: "Do you have a fever?", options: ["Option1", "Option2"]),
//            Question(id: 2, text: "Are you experiencing coughing?", options: ["Option1", "Option2"]),
//            // Add more questions as needed
//        ]
//    }
    
//    override func displayQuestion(_ question: Question) {
//        print(question.text)
//        for (index, option) in question.options.enumerated() {
//            print("\(index + 1). \(option)") //displayed as "1. option"
//        }
//    }
//
//    override func collectUserResponses() {
////        for question in questions {
////            displayQuestion(question)
////            if let response = readLine(), let optionIndex = Int(response) {
////                let selectedOption = question.options[optionIndex - 1]
////                userResponses[question.id] = selectedOption
////            }
////        }
//    }
//
//    override func getResult() {
//        // Apply algorithm to generate the medical condition based on user responses
//
//        //print("Your medical condition is: \(medicalCondition)")
//    }
//
//    override func startAssessment() {
//        loadQuestions()
//        collectUserResponses()
//        getResult()
//    }


//let assessment = Assessment()
//assessmentManager.startAssessment()
