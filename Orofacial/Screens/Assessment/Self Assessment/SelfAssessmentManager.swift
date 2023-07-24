//
//  SelfAssessmentManager.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-07-04.
//

import Foundation

class SelfAssessmentManager: ObservableObject {
    var assessment: SelfAssessment
    var length: Int
    @Published private(set) var reachedEnd = false
    @Published private(set) var answerSelected = false
    @Published private(set) var answerChoices: [AssessmentAnswer] = [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]
    @Published private(set) var progress: CGFloat = 0.00
    @Published private(set) var currentQuestion: String
    @Published private(set) var score: Int = 0
    @Published private(set) var result: String = "Default value"
    var userResponses : [Int] = []
    var questionIndex : Int = 0 // index of current question
    
    init(pAssessment: SelfAssessment) {
        self.assessment = pAssessment
        self.length = assessment.questions.count
        self.currentQuestion = assessment.questions[questionIndex]
    }
    
    func goToPrevious() {
        // Remove previous answer
        if questionIndex != 0 {
            //            score -= userResponses[index]
            userResponses.removeLast()
            
            questionIndex -= 1
            resetButtons()
            setQuestion()
        }
    }
    
    func getScore() {
        // TO BE CHANGED
        score = userResponses.reduce(0, {x, y in x + y})
        if score <= 5 {
            result = "Improvement needed"
        } else if score <= 10 {
            result = "Adequate"
        }
    }
    
    func getProgress() {
        progress = CGFloat(Double(questionIndex + 1) / Double(length) * 350)
    }
    
    func goToNextQuestion() {
        
        resetButtons()
        
        questionIndex += 1
        // Setting new question
        setQuestion()
    }
    
    func resetButtons() {
        AssessmentAnswerRow.oneSelected = false
        AssessmentAnswerRow.twoSelected = false
    }
    
    func resetAssessment() {
        print("Reset assessment")
        questionIndex = 0
        length = assessment.questions.count
        currentQuestion = assessment.questions[questionIndex]
    }
    
    
    func endAssessment() {
        reachedEnd = true
        // Reset score
        score = 0
        
    }
    
//    func getResult() {
//        if score > 8 {
//            result = "Good"
//        } else if score > 5 {
//            
//        }
//    }
    
    func setQuestion() {
        resetButtons()
        progress = CGFloat(Double(questionIndex + 1) / Double(length) * 350)
        if questionIndex < length {
            answerSelected = false
            currentQuestion = assessment.questions[questionIndex]
        }
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
        userResponses.remove(at: questionIndex)
    }
}
