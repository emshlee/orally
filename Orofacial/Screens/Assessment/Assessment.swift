//
//  Assessment.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import Foundation

//struct Assessment: Decodable {
//    var results: [Result]
//
//    struct Result: Decodable, Identifiable {
//        var id: UUID {
//            UUID()
//        }
//        var category: String
//        var type: String
//        var question: String
//        var answer: String
//
//        var formattedQuestion: AttributedString {
//            do {
//                return try AttributedString(markdown: question)
//            } catch {
//                print("Error setting formattedQuestion: \(error)")
//                return ""
//            }
//        }
//
//    }
//}

//class Question {
//    var id: Int
//    var text: String
//    var options: [AssessmentAnswer]
//    
//    init(id: Int, text: String, options: [AssessmentAnswer]) {
//        self.id = id
//        self.text = text
//        self.options = options
//    }
//}

// The superclass
class Assessment {
    var questions: [Question]
    var userResponses: [Int: String]
    var scores: [Double] = []
//    
    init(questions: [Question], userResponses: [Int : String]) {
        self.questions = questions
        self.userResponses = userResponses
    }
//    
//    func loadQuestions() { }
//    
//    func displayQuestion(_ question: Question) { }
//    
//    func collectUserResponses() { }
//    
//    func getResult() { }
//    
//    func startAssessment() { }
}

//let assessment = Assessment()
//assessmentManager.startAssessment()
