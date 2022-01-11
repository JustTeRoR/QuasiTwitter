//
//  Author.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 07.01.2022.
//

import Foundation

struct Author: Codable, Identifiable {
    var id: Int
    var name: String?
    var nickname: String
    var firstname: String
    var lastname: String
    var website: String
}
