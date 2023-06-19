//
//  Assessment.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import Foundation

class Assessment {
    var questions: [Question]
    var userResponses: [Int: String]
    var scores: [Double] = []
    
    init(questions: [Question], userResponses: [Int : String]) {
        self.questions = questions
        self.userResponses = userResponses
    }
}
