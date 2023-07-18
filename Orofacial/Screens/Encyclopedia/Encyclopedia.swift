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
                        
                Encyclopedia(name: "Oral Lichen Planus", image: "Encyclopedia11", description: "A persistent (chronic) inflammatory condition that targets the mucous membranes found within your mouth. The exact cause is unknown, but it may be related to an immune system disorder or an allergic reaction\n\nSymptoms may appear as 1) White, lacy patches\n\n2) red, swollen tissues\n\n3) open sores.\n\nHere #2 and #2 can further cause: ulcers, burning sensations, discomfort when speaking, sensitivity to hot or cold or spicy foods\n\nTypically, no treatment is necessary, but if symptoms are severe, corticosteroid mouth rinses or ointments may be prescribed "),
                        
                Encyclopedia(name: "Leukoplakia", image: "leuk", description: "Thinkened patches on the gum, with potential for cancer\n\nUsually caused by tobacco use, alcohol consumption, or irritation from rough teeth or dental appliances.\n\nSymptoms include thick white patches on the gums, tongue, or inside the cheeks that cannot be scraped off.\n\nTreatment is done by removing the source of irritation (e.g., quit smoking), close monitoring, and in some cases removal of the patches for examination"),
                       
                Encyclopedia(name: "Oral Thrush", image: "Encyclopedia13", description: "Condition in which the fungus Candida albicans accumulates on the lining of your mouth.\n\nCaused by overgrowth of a fungus called Candida albicans, often due to a weakened immune system or taking certain medications like antibiotics.\n\nSymptoms include Creamy white patches on the tongue, inner cheeks, or roof of thr mouth that can be wiped away, along with a slighlt raised, sore sensation.\n\nCan be treated with antifungal medications such as oral rinses or lozenges prescribed by a healthcare provider"),
                        
                Encyclopedia(name: "Gingivostomatitis", image: "Encyclopedia14", description: "Painful oral infeection that causes irritation, redness and swelling of your gingiva.\n\nPrimarily caused by a virus  or bacteria, usually contracted through close contact with an infected person. Often is due to poor hygiene, such as not brushing and flossing enough.\n\nSymptoms include swollen, red gums, painful sores in the mouth, difficulty eating or swallowing, bad breath, and fever.\n\nCan be treated with over the counter pain relievers, antiviral medications (if prescribed by a healthcare provider), and maintaining good oral hygiene."),
                        
                Encyclopedia(name: "Folate Deficiency", image: "Encyclopedia15", description: "Deficiency in folate (Vitamin B), which could cause the body to produce abnormaly large red blood cells that cannot function properly. It is caused by inadequate intake of folate (Vitamin B9) through diet or difficulty absorbing it.\n\nSymptoms include inflammation of the tongue, oral sores, and a pale appearance of the gums.\n\nCan be treated by increasing folate intake through a balanced diet or taking vitamin supplements as recommended by a healthcare provider"),
                        
                Encyclopedia(name: "Anemia", image: "Encyclopedia16", description: "Deficiency in red blood cell prodiction, which does not allow them to carry enough oxygen to the body tissues. Anemia occurs when there is a decrease in the number of red blood cells or a decrease in the amount of hemoglobin in the blood, often due to iron deficiency.\n\nSymptoms include pale gums, tongue, or oral tissues, along with fatigue, weakness, and shortness of breath.\n\nCan be treated by treating the underlying cause of anemia, which may involve iron supplements, dietary changes, or addressing any other contributing factors."),
                
                Encyclopedia(name: "TMJ Pain", image: "Encyclopedia17", description: "TMJ disorders cause pain in the jaw joint and in the muscles that control jaw movement. Temporomandibular joint (TMJ) pain can result from jaw injuries, teeth grinding, stress, arthritis, or misalignment of the jaw joint.\n\nSymptoms include jaw pain or tenderness, difficulty opening or closing the mouth, clicking or popping sounds in the jaw, and headaches.\n\nCan be treated by self-care measures like eating soft foods, applying warm compresses, and practicing relaxation techniques. In some cases, dental splints, physical therapy, or pain medications may be recommended by a healthcare provider."),
                
                Encyclopedia(name: "Myofascial Pain", image: "Encyclopedia18", description: "A chronic condition that affects the muscle in the head, neck, and jaw. Often caused by factors such as jaw clenching, stress, poor posture, or muscle injury.\n\nSymptoms include jaw and facial pain, headaches, difficulty opening or closing the mouth fully, clicking/popping sounds in the jaw joint, and neck/shoulder pain.\n\nCan be treated by self-care measures such as heat/cold packsm stress reduction, jaw exercises, medications (pain relievers, muscle relaxants), dental splints, physical therapy, behavioral therapies, and lifestyle modification"),
                        
]
