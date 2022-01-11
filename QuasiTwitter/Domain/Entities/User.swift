//
//  User.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 26.12.2021.
//

import Foundation

struct User: Codable, Identifiable {
    var id: String
    
    var firstname: String
    var lastname: String
    var name: String
    var nickname: String
    var website: String
    
    // array of posts here
}
