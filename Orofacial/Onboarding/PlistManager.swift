//
//  PlistManager.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-27.
//

import Foundation

protocol PlistManager {
    func convert(plist fileName: String) -> [OnboardingItem]
}

struct PlistManagerImpl: PlistManager {
    func convert(plist fileName: String) -> [OnboardingItem] {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "plist"),
              let data = try? Data(contentsOf: url),
              let items = try? PropertyListDecoder().decode([OnboardingItem].self, from: data) else {
            return []
        }
        return items
    }
}
