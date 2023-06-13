//
//  AssessmentManager.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import Foundation
import SwiftUI

//class AssessmentManager: ObservableObject {
//    private(set) var assessment: [Assessment.Result] = []
//    @Published private(set) var length = 0
//    @Published private(set) var index = 0
//    @Published private(set) var reachedEnd = false
//    @Published private(set) var answerSelected = false
//    @Published private(set) var question: AttributedString = ""
//    // @Published private(set) var answerChoices: [Answer] = []
//    @Published private(set) var progress: CGFloat = 0.00
//    @Published private(set) var result: Int
//
//    init() {
//        self.length = 0
//        self.index = 0
//        self.reachedEnd = false
//        self.answerSelected = false
//        self.question = ""
//        self.progress = 0.00
//        self.result = 0
//    }
//
//    func goToNextQuestion() {
//        if index + 1 < length {
//            index += 1
//            // setting new question
//            setQuestion()
//        } else {
//            reachedEnd = true
//        }
//    }
//
//
//    func selectAnswer(pAnswer: AssessmentAnswer) {
//        answerSelected = true
//        result += pAnswer.score
//    }
//
//}

class AssessmentManager: ObservableObject {
    var assessment: Assessment
    @Published private(set) var length: Int
    @Published private(set) var index = 0
    @Published private(set) var reachedEnd = false
    @Published private(set) var answerSelected = false
    @Published private(set) var answerChoices: [AssessmentAnswer] = []
    @Published private(set) var progress: CGFloat = 0.00
    @Published private(set) var currentQuestion: Question
    @Published private(set) var score: Int = 0
    @Published private(set) var question: String = ""
    
    var questions: [Question]
    var userResponses: [Int: AttributedString] = [:]
    
    init(pAssessment: Assessment) {
        self.assessment = pAssessment
        self.questions = pAssessment.questions
        self.length = pAssessment.questions.count
        self.currentQuestion = questions[0]
        self.answerChoices = currentQuestion.options
    }
    
    func goToNextQuestion() {
        if index + 1 < length {
            index += 1
            // Setting new question
            setQuestion()
        } else {
            endAssessment()
        }
    }
    
    func endAssessment() {
        assessment.scores.append(Double(score))
        reachedEnd = true
    }
    
    func setQuestion() {
//        answerSelected = false
        progress = CGFloat(Double(index + 1) / Double(length) * 350)

        if index < length {
            currentQuestion = assessment.questions[index]
            answerChoices = currentQuestion.options
        }
    }
    
    func selected() {
        answerSelected = true
    }
    
    func unSelected() {
        answerSelected = false
    }
    
    func selectAnswer(answer: AssessmentAnswer) {
        answerSelected = true
        score += answer.score
    }
    
    func unSelectAnswer(answer: AssessmentAnswer) {
        answerSelected = false
        score -= answer.score
    }
    
//    func displayQuestion(_ question: Question) {
//        print(question.text)
//        for (index, option) in question.options.enumerated() {
//            print("\(index + 1). \(option)") //displayed as "1. option"
//        }
//    }
//
//    func collectUserResponses() {
//        for question in questions {
//            displayQuestion(question)
//            if let response = readLine(), let optionIndex = Int(response) {
//                let selectedOption = question.options[optionIndex - 1].text
//                userResponses[question.id] = selectedOption
//            }
//        }
//    }
//
//    func getResult() {
//        // Apply your algorithm to generate the medical condition based on user responses
//        // This is a simplified example
//        var medicalCondition = "Unknown"
//
//        if userResponses[1] == "Yes" {
//            medicalCondition = "Fever"
//        } else if userResponses[2] == "Yes" {
//            medicalCondition = "Cough"
//        }
//
//        print("Your medical condition is: \(medicalCondition)")
//    }
    
//    func startAssessment() {
//        loadQuestions()
//        collectUserResponses()
//        getResult()
//    }
}

//let assessmentManager = AssessmentManager()
//assessmentManager.startAssessment()
