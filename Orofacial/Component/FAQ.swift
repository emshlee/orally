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

let faq3 = """
We have different types of teeth, and each one has its own function. There are four types of permanent teeth in humans:
- Incisors
- Canines
- Premolars
- Molars

Incisors

Incisors are the most noticeable teeth in your mouth. Typically, people have four incisors on both the upper and lower jaws. These teeth have a narrow edge that helps to cut food when you bite.

Canines

Canines, often referred to as "eye teeth," get their name from their resemblance to a dog's fangs. They are pointy and used for tearing into foods like meat and crunchy vegetables. Most people have four canines - one in each quadrant.

Premolars

Premolars, also known as bicuspids, sit between your canines and molars. They have features of both canines and molars, enabling them to tear, crush, and grind food into smaller pieces.

Molars

Molars are located at the very back of your mouth and serve as your primary chewing teeth, responsible for about 90% of the process. Adults typically have 12 molars - three in each quadrant - including wisdom teeth, also known as third molars. If you don't have wisdom teeth, you likely have eight molars in total. Molars are ideal for crushing and grinding food.
"""

let faq4 = """
A tooth is comprised of two main components:

The crown, which is the visible part of the tooth above the gums. It is covered with enamel, a durable and protective material.

The root, which holds the tooth in place in the jawbone. The root is hidden below the gums and connected to the tooth socket by the periodontal ligament, a soft connective tissue.
"""

let faq5 = """
A tooth consists of four primary layers:

Enamel, the outermost layer of the tooth that serves as a barrier against harmful bacteria that can cause cavities. Enamel is the strongest substance in the human body.

Dentin, a layer of softer material found underneath the enamel. When the enamel wears away, dentin becomes exposed and the risk of cavities increases.

Cementum, a layer that covers the tooth root and works with periodontal tissues to keep the tooth securely anchored in the jawbone.

Tooth pulp, the innermost layer that contains nerves, blood vessels, and connective tissues.
"""

let faq6 = """
The Universal Numbering System assigns a number from 1 to 32 to adult teeth, beginning with your upper-right third molar. You count toward your two front teeth and then to the left side. Once you reach #16 (your upper-left third molar), you drop down and begin with #17 (your lower-left third molar). Then, counting across your lower teeth, you end up at #32 (your lower-right third molar).

Dentists still assign numbers to any missing teeth. By doing this, they can create an accurate tooth chart to keep in your records.
"""

var FAQList = [FAQ(name: "What exactly are teeth?", image: "FAQ1",
                   description: "Did you realize that teeth play a crucial role in the digestive process by cutting and crushing food, making it easier to swallow?\n\nAlthough teeth may resemble bones, they are actually ectodermal organs, along with your hair, skin, and sweat glands.\n\n\n"),
               FAQ(name: "How many teeth do adults have?", image: "FAQ2", description: "The majority of adults have 32 permanent teeth, while some people may have missing teeth (hypodontia) or extra teeth (supernumerary teeth).\n\nChildren usually grow 20 primary teeth between the ages of 4 months to 6 years old, which are eventually replaced by permanent adult teeth.\n"),
               FAQ(name: "What are the four types of teeth?", image: "FAQ3", description: faq3),
               FAQ(name: "What is the structure of a tooth?", image: "FAQ4", description: faq4),
               FAQ(name: "What are teeth made up of?", image: "FAQ5", description: faq5),
               // FAQ5 image might have copyright issues
               FAQ(name: "Universal numbering of teeth", image: "FAQ6", description: faq6)
               // FAQ6 image might have copyright issues
]
