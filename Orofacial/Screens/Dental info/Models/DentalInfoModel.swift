//
//  DentalInfoModel.swift
//  Orofacial
//
//  Created by Yoon on 2023-06-05.
//

import Foundation

struct Info: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let description: String
}

extension Info {
    static let all: [Info] = [
    Info(
        title: "What is Basic Dental Care?",
        image: "https://www.phillydentistry.com/_wp/wp-content/uploads/2020/12/dental-care-mirror.jpg",
        description: """
Basic dental care involves brushing and flossing your teeth regularly, seeing your dentist and/or dental hygienist for regular checkups and cleanings, and eating a mouth-healthy diet, which means eating plenty of whole grain foods, vegetables and fruits, and protein foods.
"""),
    Info(title: "Why is Basic Dental Care Important?",
         image: "https://www.phillydentistry.com/_wp/wp-content/uploads/2020/12/dental-care-mirror.jpg",
         description: """
Practicing basic dental care:
    - Prevents tooth decay
    - Prevents gum (periodontal) disease, which can damage gum tissue and the bones that support teeth, and in the long term can lead to the loss of teeth.
    - Shortens time with the dentist and dental hygienist, and makes the trip more pleasant.
    - Saves money. By preventing tooth decay and gum disease, you can reduce the need for fillings and other costly procedures.
    - Helps prevent bad breath. Brushing and flossing rid your mouth of the bacteria that cause bad breath.
    - Helps keep teeth white by preventing staining from food, drinks, and tobacco.
    - Improves overall health.
    - Makes it possible for your teeth to last a lifetime.
""")
    ]
}
