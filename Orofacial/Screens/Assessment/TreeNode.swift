//
//  TreeNode.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-06-29.
//

import Foundation

public class TreeNode<T> {
    public var name : String
    public var examples : String
    public var value: [T]
    public var children: [TreeNode] = []
    public var levelNumber : Int
    public var FirstLevelPointer : Int = 0
//    public var SecondLevelPointer : Int = 0
//    public var ThirdLevelPointer : Int = 0
    
    public init(_ name : String = "", examples: String = "", levelNumber : Int, value: [T]) {
        self.name = name
        self.levelNumber = levelNumber
        self.value = value
        self.examples = examples
    }
    
    public func add(_ child: TreeNode) {
        children.append(child)
    }
    
//    public func setPointer(levelNumber : Int, pointerNumber : Int) {
//        if levelNumber == 1 {
//            self.FirstLevelPointer = pointerNumber
//        } else if levelNumber == 2 {
//            self.SecondLevelPointer = pointerNumber
//        } else if levelNumber == 3 {
//            self.ThirdLevelPointer = pointerNumber
//        } else {
//            print("invalid level number")
//        }
//    }
}

public func createTree() -> TreeNode<String> {
    let assessment = TreeNode<String> (levelNumber: 0, value: ["Symptom Assessment"])
    
    // FIRST LEVEL
    let firstSet_0 = TreeNode<String>(levelNumber: 1, value: ["Have you noticed any white patches or abnormal changes in the lining of your mouth?", "Have you been experiencing any general symptoms such as fatigue, weakness, or pale skin?", "Have you been experiencing any pain, discomfort, or clicking sounds in your jaw?", "Have you noticed any changes or problems with your teeth, such as pain, sensitivity, or discoloration?", "Do you notice any bleeding, swelling, or redness in your gums?", "Have you noticed persistent ba1d breath despite practicing good oral hygiene?", "Have you observed any lumps, swelling, or enlarged lymph nodes in your mouth or neck?", "Do you have any sores or ulcers in your mouth?" ])
    
    let firstSet_1 = TreeNode<String>(levelNumber: 1, value: ["Have you recently taken any medications or experienced a weakened immune  system?",
                                       "Have you noticed any changes in your tongue or gums, such as swelling or discoloration?",
                                       "Do you have any difficulty opening or closing your mouth?",
                                       "Are you experiencing any discomfort when eating or drinking hot, cold, sweet, or acidic substances?",
                                       "Do you experience any pain or discomfort in your gums?",
                                       "Do you experience a bad taste in your mouth?",
                                       "Have you noticed any abnormal changes in your oral tissues, such as color changes, sores, or patches?",
                                              "Have you noticed any pain, discomfort, or bleeding in the area of the sore?"])
    
    let firstSet_2 = TreeNode<String>(levelNumber: 1, value: ["Are you experiencing any pain, discomfort, or ulcers in your mouth?",
                                      "Have you been diagnosed with any underlying conditions or deficiencies?",
                                      "Have you noticed any tenderness or sensitivity in your jaw muscles?",
                                      "Have you been maintaining good oral hygiene practices and regular dental check-ups?",
                                      "Have you noticed any changes in the position or appearance of your teeth?",
                                      "Have you identified any potential factors that may contribute to your bad breath, such as dry mouth or certain medications?",
                                      "Are you experiencing any pain or difficulty while swallowing, speaking, or chewing?",
                                      "Are the sores different in color than the surrounding tissue?"])
    
    
    // SECOND LEVEL
    let secondSet_00 = TreeNode<String>("Group 1: Inflammatory Conditions", examples: "Oral Lichen Planus, Leukoplakia, Oral Thrush, Gingivostomatitis", levelNumber: 2 ,value: ["Do you have bad breath, dry mouth, swollen gums, and mouth ulcers?", "Do you have creamy white bumps on your tongue, inner cheeks, gums, or tonsils that can be scraped off?", "Do you have thick, white patches on your tongue or mouth lining?", "Do you have thick, white patches on your gums, lips, cheeks, or tongue?"])
    
    let secondSet_01 = TreeNode<String>("Group 1: Inflammatory Conditions", examples: "Oral Lichen Planus, Leukoplakia, Oral Thrush, Gingivostomatitis", levelNumber: 2 ,value: ["Have you noticed an increase in saliva production?", "Do you experience a cotton-like sensation in your mouth?", "Are the patches smooth or rough to the touch?", "Have you noticed any changes in the texture or firmness of the patches?"])
    
    let secondSet_02 = TreeNode<String>("Group 1: Inflammatory Conditions", examples: "Oral Lichen Planus, Leukoplakia, Oral Thrush, Gingivostomatitis", levelNumber: 2 ,value: ["Do you have a sore throat or difficulty swallowing?", "Have you noticed a loss of taste or altered taste sensation?", "Have you experienced any discomfort or pain while eating or drinking?", "Do the patches cause any pain or discomfort?"])
    
    let secondSet_10 = TreeNode<String>("Group 2: Systemic Conditions", examples: "Folate Deficiency, Anemia", levelNumber: 2,
                                       value: ["Do you experience symptoms such as fatigue, weakness, pale skin, tongue swelling, gray hair in adult, or growth delay in children?", "Do you experience symptoms such as pale, cold skin, pale gums, dizziness, lightheadedness, fatigue, increased or decreased blood pressure, or a racing or pounding heart?"])
    
    let secondSet_11 = TreeNode<String>("Group 2: Systemic Conditions", examples: "Folate Deficiency, Anemia", levelNumber: 2,
                                       value: ["Have you noticed changes in your appetite or weight?", "Do you have any unusual cravings for non-food items, such as ice or dirt (a condition known as pica)?"])
    
    let secondSet_12 = TreeNode<String>("Group 2: Systemic Conditions", examples: "Folate Deficiency, Anemia", levelNumber: 2,
                                       value: ["Do you have any digestive issues, such as diarrhea or abdominal pain?", "Have you noticed shortness of breath or difficulty breathing during physical activity?"])
    
    let secondSet_20 = TreeNode<String>("Group 3: Pain and TMJ Disorders", examples: "TMJ Pain, Myofascial Pain", levelNumber: 2,
                                       value: ["Do you experience popping or clicking sounds when moving your jaw?",
                                               "Have dental problems been ruled out as the cause of your toothaches?"])
    
    let secondSet_21 = TreeNode<String>("Group 3: Pain and TMJ Disorders", examples: "TMJ Pain, Myofascial Pain", levelNumber: 2,
                                       value: ["Do you have specific jaw pain? Where is the pain located?",
                                               "Do you experience pain in your face, jaw, or around your mouth?"])
    
    let secondSet_22 = TreeNode<String>("Group 3: Pain and TMJ Disorders", examples: "TMJ Pain, Myofascial Pain", levelNumber: 2,
                                       value: ["Do you have difficulty opening or closing your mouth?",
                                               "Have you noticed any swelling near your jaw?",
                                              "Does the pain worsen with jaw movements, chewing, or teeth grinding?",
                                              "Have you noticed tender areas in your jaw muscles?"])
    
    let secondSet_30 = TreeNode<String>("Group 4: Dental Conditions", examples: "Tooth Erosion, Discolored Teeth, Sensitive Teeth, Cavities", levelNumber: 2, value: ["Is the tooth tender or painful when tapped on?",
                                "Does the tooth have a yellowish colour?",
                                "Do your teeth have sharp edges?",
                                "Do you have any white, brown, or black spots on the teeth?"])
    
    let secondSet_31 = TreeNode<String>("Group 4: Dental Conditions", examples: "Tooth Erosion, Discolored Teeth, Sensitive Teeth, Cavities", levelNumber: 2, value: ["Is the tooth sensitive to cold?",
                                "Does the tooth have a pinkish colour?",
                                "Are your teeth chalky, pitted, or discolored (yellow)?",
                                "Do you have spontaneous tooth pain?"])
    
    let secondSet_32 = TreeNode<String>("Group 4: Dental Conditions", examples: "Tooth Erosion, Discolored Teeth, Sensitive Teeth, Cavities", levelNumber: 2, value: ["Does the tooth respond strongly to stimuli?",
                                "Is there any movement in the tooth?",
                                "Do visual inspections show caries or decalcifications?",
                                "Are there any significant patterns shown during visual inspection?",
                                "Are your teeth sensitive to hot, cold, sugary, or acidic substances?",
                                "Do you have pain when eating, biting, or drinking hot/cold/sweet substances?",
                                "Have you noticed visible holes or pits in your teeth?"])
    
    let secondSet_40 = TreeNode<String>("Group 5: Gum Disease (Periodontal disease)", examples: "Periodontal Disease", levelNumber: 2, value:["Do your gums bleed when brushing or flossing?"])
    
    let secondSet_41 = TreeNode<String>("Group 5: Gum Disease (Periodontal disease)", examples: "Periodontal Disease", levelNumber: 2, value:["Do you notice changes in the position or appearance of your teeth?"])
    
    let secondSet_42 = TreeNode<String>("Group 5: Gum Disease (Periodontal disease)", examples: "Periodontal Disease", levelNumber: 2, value:["Have you been diagnosed with gum disease or periodontitis in the past?"])
    
    let secondSet_50 = TreeNode<String>("Group 6: Bad Breath (potentially stomach ulcer! And many others…)", examples: "Bad Breath", levelNumber: 2, value: ["Do you have a bad taste in your mouth?"])
    
    let secondSet_51 = TreeNode<String>("Group 6: Bad Breath (potentially stomach ulcer! And many others…)", examples: "Bad Breath", levelNumber: 2, value: ["Is your bad breath worse at certain times of the day?"])
    
    let secondSet_52 = TreeNode<String>("Group 6: Bad Breath (potentially stomach ulcer! And many others…)", examples: "Bad Breath", levelNumber: 2, value: ["Does anything make your bad breath better or worse?"])
    
    let secondSet_60 = TreeNode<String>("Group 7: Oral Cancer", examples: "Oral Cancer", levelNumber: 2, value: ["Are you experiencing persistent earache?"])
    
    let secondSet_61 = TreeNode<String>("Group 7: Oral Cancer", examples: "Oral Cancer", levelNumber: 2, value: ["Have you observed any white or red patches in your mouth?"])
    
    let secondSet_62 = TreeNode<String>("Group 7: Oral Cancer", examples: "Oral Cancer", levelNumber: 2, value: ["Do you have mouth sores that haven't healed in two weeks?"])
    
    let secondSet_70 = TreeNode<String>("Group 8: Mouth Sores", examples: "Cold Sores", levelNumber: 2, value: ["Does the sore have a different color than the surrounding tissue? (If yes, specify: red or darker in color, or white, gray, or yellow)"])
    
    let secondSet_71 = TreeNode<String>("Group 8: Mouth Sores", examples: "Cold Sores", levelNumber: 2, value: ["Do you have bad breath, dry mouth, or mouth ulcers?"])
    
    let secondSet_72 = TreeNode<String>("Group 8: Mouth Sores", examples: "Cold Sores", levelNumber: 2, value: ["Have you experienced a tingling or burning sensation in the area before the sore appeared?"])
    
    
    
    // THIRD LEVEL
    let thirdSet_0 = TreeNode<String>(levelNumber: 3, value: ["Gingivostomatitis", "Oral thrush", "Leukoplakia", "Oral Lichen Planus"])
    let thirdSet_1 = TreeNode<String>(levelNumber: 3, value: ["Folate Deficiency", "Anemia"])
    let thirdSet_2 = TreeNode<String>(levelNumber: 3, value: ["TMJ Pain", "Myofascial Pain"])
    let thirdSet_3 = TreeNode<String>(levelNumber: 3, value: ["Tooth Erosion", "Discolored Teeth", "Sensitive Teeth", "Cavities"])
    let thirdSet_4 = TreeNode<String>(levelNumber: 3, value: ["Peridontal Disease"])
    let thirdSet_5 = TreeNode<String>(levelNumber: 3, value: ["Bad Breath"])
    let thirdSet_6 = TreeNode<String>(levelNumber: 3, value: ["Oral Cancer"])
    let thirdSet_7 = TreeNode<String>(levelNumber: 3, value: ["Cold Sores"])

    // Organizing all the levels as tree structure
    assessment.add(firstSet_0)
    assessment.add(firstSet_1)
    assessment.add(firstSet_2)
    
    let firstLevels = [firstSet_0, firstSet_1, firstSet_2]
    let secondLevels = [secondSet_00, secondSet_10, secondSet_20, secondSet_30, secondSet_40, secondSet_50, secondSet_60, secondSet_70]
    
    for firstLevel in firstLevels {
        for secondLevel in secondLevels {
            firstLevel.add(secondLevel)
        }
    }
    
    let secondSet_0 = [secondSet_00, secondSet_01, secondSet_02]
    let secondSet_1 = [secondSet_10, secondSet_11, secondSet_12]
    let secondSet_2 = [secondSet_20, secondSet_21, secondSet_22]
    let secondSet_3 = [secondSet_30, secondSet_31, secondSet_32]
    let secondSet_4 = [secondSet_40, secondSet_41, secondSet_42]
    let secondSet_5 = [secondSet_50, secondSet_51, secondSet_52]
    let secondSet_6 = [secondSet_60, secondSet_61, secondSet_62]
    let secondSet_7 = [secondSet_70, secondSet_71, secondSet_72]
    
    for secondSet in secondSet_0{
        secondSet.add(thirdSet_0)}
    for secondSet in secondSet_1{
        secondSet.add(thirdSet_1)}
    for secondSet in secondSet_2{
        secondSet.add(thirdSet_2)}
    for secondSet in secondSet_3{
        secondSet.add(thirdSet_3)}
    for secondSet in secondSet_4{
        secondSet.add(thirdSet_4)}
    for secondSet in secondSet_5{
        secondSet.add(thirdSet_5)}
    for secondSet in secondSet_6{
        secondSet.add(thirdSet_6)}
    for secondSet in secondSet_7{
        secondSet.add(thirdSet_7)}
    


    
    // Return the assessment tree
    return assessment
}


