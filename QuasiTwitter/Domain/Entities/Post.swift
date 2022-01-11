//
//  Post.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 07.01.2022.
//

import Foundation
// TODO: update naming to canonic and add coding keys later.
// swiftlint:disable identifier_name
struct Post: Codable, Identifiable {
    var id: Int
    var time_created: Date
    var title: String
    var photos_url: [String]
    var likes: [Like]
    var author: Author
    var comments: [Comment]
    var user_id: Int
    var text: String
}

struct Like: Codable, Identifiable {
    var id: Int
    var user_id: Int
    var post_id: Int
}
