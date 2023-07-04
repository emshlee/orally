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
    var length: Int
//    @Published private(set) var QSetIndex : Int = 0 // index of the current question set
//    @Published private(set) var questionIndex: Int = 0 // index of current question
    @Published private(set) var reachedEnd = false
    @Published private(set) var answerSelected = false
    @Published private(set) var answerChoices: [AssessmentAnswer] = [AssessmentAnswer(text: "Yes", score: 1), AssessmentAnswer(text: "No", score: 0)]
    @Published private(set) var progress: CGFloat = 0.00
    @Published private(set) var currentQuestion: String
    @Published private(set) var score: Int = 0
//    @Published private(set) var result: String = "Inconclusive"
//    var questions: [Question]
    var userResponses : [Int] = []
    var QSetIndex : Int = 0 // index of the current question set
    var questionIndex : Int = 0 // index of current question
    @Published private(set) var currentNode : TreeNode<String>
    var currentLevel : Int = 1
    
    init(pAssessment: Assessment) {
        self.assessment = pAssessment
        self.length = assessment.tree.children[QSetIndex].value.count // number of questions in the current set
        self.currentQuestion = assessment.tree.children[QSetIndex].value[questionIndex]
        self.currentNode = assessment.tree.children[QSetIndex]
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
    
//    func startNewSet() {
//        self.QSetIndex += 1
//        questionIndex = 0 // reset question index
//        self.length = currentNode.value.count // number of questions in the current set
//        setQuestion()
//    }
    
    func getScore() {
        score = userResponses.reduce(0, {x, y in x + y})
    }
    
    func getProgress() {
        length = currentNode.value.count
        progress = CGFloat(Double(questionIndex + 1) / Double(length) * 350)
    }
    
    func goToNextQuestion() {
        
        resetButtons()
        
        questionIndex += 1
        // Setting new question
        setQuestion()
    }
    
    func getResult() {
        getScore()
        if score > 1 || score == 0 {
            if currentNode.levelNumber == 1 {
                // don't change tree level, increment QSet index
                if QSetIndex + 1 == assessment.tree.children.count {
                    // We've reached the end of the first level question set
                    // The result is inconclusive
                    currentNode = TreeNode<String>(levelNumber: 3, value: ["Inconclusive"])
                } else {
                    questionIndex = 0
                    QSetIndex += 1
                    userResponses = [] // reset user responses
                }
            } else {
                // In this case, we go back to the first level
                currentNode = assessment.tree.children[assessment.tree.FirstLevelPointer + 1]
                userResponses = []
            }
        } else { // score == 1
            if currentNode.levelNumber == 1 {
                // Store current question set
                assessment.tree.FirstLevelPointer = QSetIndex
            }
            // Move to next level
            currentNode = currentNode.children[userResponses.firstIndex(of: 1) ?? 0]
            print(currentNode.name)
            userResponses = []
            questionIndex = 0
            getProgress()
            resetButtons()
        }
    }
    
    func resetButtons() {
        AssessmentAnswerRow.oneSelected = false
        AssessmentAnswerRow.twoSelected = false
    }
    
    func resetAssessment() {
        print("Reset assessment")
        QSetIndex = 0
        questionIndex = 0
        length = assessment.tree.children[QSetIndex].value.count // number of questions in the current set
        currentQuestion = assessment.tree.children[QSetIndex].value[questionIndex]
        currentNode = assessment.tree.children[QSetIndex]
    }
    
    
    func endAssessment() {
        reachedEnd = true
        // Reset score
        score = 0
        
    }
    
    func setQuestion() {
        resetButtons()
        progress = CGFloat(Double(questionIndex + 1) / Double(length) * 350)
        if questionIndex < length {
            answerSelected = false
            currentQuestion = currentNode.value[questionIndex]
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
