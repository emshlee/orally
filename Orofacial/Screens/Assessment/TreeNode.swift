//
//  TreeNode.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-06-29.
//

import Foundation

public class TreeNode<T> {
    
    private var value: [T]
    private var children: [TreeNode] = []
    private var FirstLevelPointer : Int?
    private var SecondLevelPointer : Int?
    private var ThirdLevelPointer : Int?
    
    public init(_ value: [T]) {
        self.value = value
    }
    
    public func add(_ child: TreeNode) {
        children.append(child)
    }
    
    public func setPointer(levelNumber : Int, pointerNumber : Int) {
        if levelNumber == 1 {
            self.FirstLevelPointer = pointerNumber
        } else if levelNumber == 2 {
            self.SecondLevelPointer = pointerNumber
        } else if levelNumber == 3 {
            self.ThirdLevelPointer = pointerNumber
        } else {
            print("invalid level number")
        }
    }
    
    
}

public func createTree() -> TreeNode<String> {
    let assessment = TreeNode<String> (["Symptom Assessment"])
    
    // FIRST LEVEL
    let firstSet_0 = TreeNode<String>(
        ["Have you noticed any white patches or abnormal changes in the lining of your mouth?",
         "Have you been experiencing any general symptoms such as fatigue, weakness, or pale skin?",
         "Have you been experiencing any pain, discomfort, or clicking sounds in your jaw?", "Have you noticed any changes or problems with your teeth, such as pain, sensitivity, or discoloration?", "Do you notice any bleeding, swelling, or redness in your gums?", "Have you noticed persistent bad breath despite practicing good oral hygiene?", "Have you observed any lumps, swelling, or enlarged lymph nodes in your mouth or neck?", "Do you have any sores or ulcers in your mouth?" ])
    
    
    // SECOND LEVEL
    let secondSet_0 = TreeNode<String>(
        ["Do you have bad breath, dry mouth, swollen gums, and mouth ulcers?", "Do you have creamy white bumps on your tongue, inner cheeks, gums, or tonsils that can be scraped off?", "Do you have thick, white patches on your tongue or mouth lining?", "Do you have thick, white patches on your gums, lips, cheeks, or tongue?"])
    
    // THIRD LEVEL
    let thirdSet_0 = TreeNode<String>(["Gingivostomatitis", "Oral thrush", "Leukoplakia", "Oral Lichen Planus"])
    
    // Organizing all the levels as tree structure
    secondSet_0.add(thirdSet_0)
    firstSet_0.add(secondSet_0)
    assessment.add(firstSet_0)
    
    
    
    // Repeat for the other sets...
    let firstSet_1 = TreeNode<String>(["To be added"])
    
    
    // Return the assessment tree
    return assessment
}


