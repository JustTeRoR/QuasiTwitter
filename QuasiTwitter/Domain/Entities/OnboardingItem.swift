//
//  OnboardingItem.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 19.12.2021.
//

import Foundation

struct OnboardingItem: Codable, Identifiable {
    var id = UUID()
    var title: String?
    var animation: String?
    
    enum CodingKeys: String, CodingKey {
        case title, animation
    }
    
    init(title: String? = nil,
         animation: String? = nil) {
        self.title = title
        self.animation = animation
    }
    
    init(from decoder: Decoder) throws {
        do {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decode(String?.self, forKey: .title)
            self.animation = try container.decode(String?.self, forKey: .animation)
        } catch {
            print(error)
        }
    }
}
