//
//  AssessmentManager.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import Foundation
import SwiftUI

class AssessmentManager: ObservableObject {
    var assessment: Assessment
    @Published private(set) var length: Int
    @Published private(set) var index = 0
    @Published private(set) var reachedEnd = false
    @Published private(set) var answerSelected = AssessmentAnswerRow.oneSelected || AssessmentAnswerRow.twoSelected
    @Published private(set) var answerChoices: [AssessmentAnswer] = []
    @Published private(set) var progress: CGFloat = 0.00
    @Published private(set) var currentQuestion: Question
    @Published private(set) var score: Int = 0
    @Published private(set) var question: String = ""
    
    var questions: [Question]
    var userResponses: [Int] = []
    
    init(pAssessment: Assessment) {
        self.assessment = pAssessment
        self.questions = pAssessment.questions
        self.length = pAssessment.questions.count
        self.currentQuestion = questions[0]
        self.answerChoices = currentQuestion.options
    }
    
    func goToPrevious() {
        // Remove previous answer
        if index != 0 {
//            score -= userResponses[index]
            userResponses.removeLast()
            
            index -= 1
            AssessmentAnswerRow.oneSelected = false
            AssessmentAnswerRow.twoSelected = false
            setQuestion()
        }
    }
    
    func getScore() {
        for n in userResponses {
            score += n
        }
    }
    
    func goToNextQuestion() {
        
        AssessmentAnswerRow.oneSelected = false
        AssessmentAnswerRow.twoSelected = false
        
        if index + 1 == length {
            endAssessment()
        } else {
            index += 1
            // Setting new question
            setQuestion()
        }
    }
    
    func endAssessment() {
        reachedEnd = true
        // Reset score
        score = 0
    }
    
    func setQuestion() {
        progress = CGFloat(Double(index + 1) / Double(length) * 350)
        
        if index < length {
            answerSelected = false
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
//        score += answer.score
        userResponses.append(answer.score)
//        userResponses[index] = answer.score
    }

    func unSelectAnswer(answer: AssessmentAnswer) {
        answerSelected = false
//        score -= answer.score
//        userResponses[index] = answer.score
        userResponses.remove(at: index)
    }
}
