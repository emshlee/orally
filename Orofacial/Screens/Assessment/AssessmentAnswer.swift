//
//  AssessmentAnswer.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import Foundation

struct AssessmentAnswer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var score: Int
}
