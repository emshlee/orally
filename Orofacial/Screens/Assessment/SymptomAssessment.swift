//
//  SymptomAssessment.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-18.
//

import Foundation

class SymptomAssessment : Assessment {
    
    init() {
        super.init(
            tree: createTree(), userResponses: [])
    }
}
