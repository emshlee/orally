//
//  Assessment.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-14.
//

import Foundation

struct Question {
    var id: Int
    var text: String
    var options: [AssessmentAnswer]
}

class Assessment {
    var tree: TreeNode<String>
    var userResponses: [Int]
    
    init(tree: TreeNode<String>, userResponses: [Int]) {
        self.tree = tree
        self.userResponses = userResponses
    }
}
