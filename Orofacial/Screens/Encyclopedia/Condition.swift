//
//  Condition.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import Foundation

struct Condition: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
}

var ConditionList = [Condition(name: "Condition 1", image: "", description: "")
               
]
