//
//  Encyclopedia.swift
//  Orofacial
//
//  Created by Taewon Hwang on 2023-05-24.
//

import Foundation

struct Encyclopedia: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
}

var EncyclopediaList = [Encyclopedia(name: "Cavities", image:       "Encyclopedia1",
                   description: "Plaque combines with sugars and starches of food to produce acid that attacks the enamal.\n\nSecond most common health in the USA\n\nFlossing helps prevent cavities"),
               
                        Encyclopedia(name: "Gum Disease", image: "Encyclopedia2", description: "Periodontal and infection in the gums around teeth. It can cause adult tooth loss.\n\nSymptoms include bad breath, red/swollen/tender/bleeding gums, sensitivity, pain when chewing\n\nGingivitis is the technical name for gum disease."),
               
                        Encyclopedia(name: "Sensitive Teeth", image: "Encyclopedia3", description: "Symptoms include pain when brushing or flossing.\n\nInvolves pain or discomfort from sweets, coldness, hot drinks, cold drinks, ice cream, etc"),
                        
               Encyclopedia(name: "Discolored Teeth", image: "Encyclopedia4", description: "Symptoms include discoloration"),
               Encyclopedia(name: "Broken Teeth", image: "Encyclopedia5", description: ""),
                Encyclopedia(name: "Chronic Bad Breath", image: "Encyclopedia6", description: "May be due to gum disease, cavities, oral cancer, dry mouth, bacteria on tongue.\n\nDue to the bacteria growing on coated tongues and in the space between gums and teeth (periodontal space) from food debris and plaque"),
                Encyclopedia(name: "Painful Wisdom Teeth", image: "Encyclopedia7", description: ""),
                Encyclopedia(name: "Oral Cancer", image: "Encyclopedia8", description: "Symptoms include sores, rough areas in mouth, change in your bite, difficulty chewing, difficulty moving tongue or jaw\n\nCan be curable if diagnosed and treated if detected early"),
                Encyclopedia(name: "Mouth Sores", image: "Encyclopedia9", description: "Canker sores occures inside mouth and not on the lips. It is not contagious.\n\nFever blisters/cold sores. Caused by Herpes simplex virus. It is contagious\n\nThrush (oral candidiasis) yeast infection sores in the mouth"),
                        
                Encyclopedia(name: "Tooth Erosion", image: "Encyclopedia10", description: "Loss of tooth structure\n\nCaused  by acid attacking the enamel on the outer surface of the tooth"), 
]

