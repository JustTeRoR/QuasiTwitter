//
//  Comment.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 07.01.2022.
//

import Foundation
// TODO: update naming to canonic and add coding keys later.
// swiftlint:disable identifier_name
struct Comment: Codable, Identifiable {
    var id: Int
    var post_id: Int
    var user_id: Int
    var time_created: Date
    var text: String
    var author: Author
    
}
