//
//  OnboardingContentManager.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-03-27.
//

import Foundation

protocol OnboardingContentManager {
    var limit: Int { get }
    var items: [OnboardingItem] { get }
    init(manager: PlistManager)
}

final class OnboardingContentManagerImpl: OnboardingContentManager {
    var limit: Int {
        items.count - 1
    }
    
    var items: [OnboardingItem]
    
    init(manager: PlistManager) {
        self.items = manager.convert(plist: "OnboardingContent")
    }
}
