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
                   description: "Did you realize that teeth play a crucial role in the digestive process by cutting and crushing food, making it easier to swallow?\n\nAlthough teeth may resemble bones, they are actually ectodermal organs, along with your hair, skin, and sweat glands.\n\n\n"),
               FAQ(name: "How many teeth do adults have?", image: "FAQ2", description: "The majority of adults have 32 permanent teeth, while some people may have missing teeth (hypodontia) or extra teeth (supernumerary teeth).\n\nChildren usually grow 20 primary teeth between the ages of 4 months to 6 years old, which are eventually replaced by permanent adult teeth.\n"),
               FAQ(name: "What are the four types of teeth?", image: "FAQ3", description: ""),
               FAQ(name: "What is the structure of a tooth?", image: "FAQ4", description: ""),
               FAQ(name: "What is the structure of a tooth?", image: "FAQ4", description: "")
]
