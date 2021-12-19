//
//  PlistManager.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 19.12.2021.
//

import Foundation

protocol PlistManager {
    func convert(plist filename: String) -> [OnboardingItem]
}

struct PlistManagerImpl: PlistManager {
    
    func convert(plist filename: String) -> [OnboardingItem] {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "plist"),
              let data = try? Data(contentsOf: url),
              let items = try? PropertyListDecoder().decode([OnboardingItem].self, from: data) else {
            return[]
        }
        return items
    }
}
