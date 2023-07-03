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
    
    
    // SECOND LEVEL
    let secondSet_0 = TreeNode<String>("Group 1: Inflammatory Conditions", examples: "Oral Lichen Planus, Leukoplakia, Oral Thrush, Gingivostomatitis", levelNumber: 2 ,value: ["Do you have bad breath, dry mouth, swollen gums, and mouth ulcers?", "Do you have creamy white bumps on your tongue, inner cheeks, gums, or tonsils that can be scraped off?", "Do you have thick, white patches on your tongue or mouth lining?", "Do you have thick, white patches on your gums, lips, cheeks, or tongue?"])
    
    // THIRD LEVEL
    let thirdSet_0 = TreeNode<String>(levelNumber: 3, value: ["Gingivostomatitis", "Oral thrush", "Leukoplakia", "Oral Lichen Planus"])
    
    // Organizing all the levels as tree structure
    secondSet_0.add(thirdSet_0)
    firstSet_0.add(secondSet_0)
    assessment.add(firstSet_0)
    
    
    
    // Repeat for the other sets...
    let firstSet_1 = TreeNode<String>(levelNumber: 1, value: ["Have you recently taken any medications or experienced a weakened immune system?",
                                       "Have you noticed any changes in your tongue or gums, such as swelling or discoloration?",
                                       "Do you have any difficulty opening or closing your mouth?",
                                       "Are you experiencing any discomfort when eating or drinking hot, cold, sweet, or acidic substances?",
                                       "Do you experience any pain or discomfort in your gums?",
                                       "Do you experience a bad taste in your mouth?",
                                       "Have you noticed any abnormal changes in your oral tissues, such as color changes, sores, or patches?",
                                              "Have you noticed any pain, discomfort, or bleeding in the area of the sore?"])
    
    let secondSet_1 = TreeNode<String>("Group 2: Systemic Conditions", examples: "Folate Deficiency, Anemia", levelNumber: 2,
                                       value: ["Do you experience symptoms such as fatigue, weakness, pale skin, tongue swelling, gray hair in adult, or growth delay in children?", "Do you experience symptoms such as pale, cold skin, pale gums, dizziness, lightheadedness, fatigue, increased or decreased blood pressure, or a racing or pounding heart?"])
    
    let thirdSet_1 = TreeNode<String>(levelNumber: 3, value: ["Folate Deficiency", "Anemia"])
    
    secondSet_0.add(thirdSet_1)
    firstSet_0.add(secondSet_1)
    assessment.add(firstSet_1)
    
    
    // Return the assessment tree
    return assessment
}


