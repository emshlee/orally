//
//  FAQ.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-09.
//

import Foundation

struct FAQ: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
}

var FAQList = [FAQ(name: "What exactly are teeth?", image: "FAQ1",
                   description: "Did you realize that teeth play a crucial role in the digestive process by cutting and crushing food, making it easier to swallow?\n\nAlthough teeth may resemble bones, they are actually ectodermal organs, along with your hair, skin, and sweat glands."),
               FAQ(name: "How many teeth do adults have?", image: "FAQ2", description: ""),
               FAQ(name: "What are the four types of teeth?", image: "FAQ3", description: ""),
               FAQ(name: "What is the structure of a tooth?", image: "FAQ4", description: "")
]
