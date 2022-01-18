//
//  NetworkingService.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 16.01.2022.
//

import Foundation
import Moya

enum NetworkingService {
    /// users section
    case loginUser(String, String)
    case getUserInfoById(Int)
    // TODO: to think about more appropriate data transferring
    case registerUser(String, String, String, String, String)
    case updateUser(Int, String, String, String, String, String, String)
    
    /// posts section
    case uploadNewPost(Post)
    case getPostById(Int)
    case getAllPostsOnPage(Int)
    case likePostWIthId(Int)
    
    /// comments section
    case addCommentToPostWithId(Int, String)
    case getCommentsOnPostById(Int)
    case getCommentWithIdUnderPostWithId(Int, Int)
}

// swiftlint:disable force_unwrapping
extension NetworkingService: TargetType {
    var baseURL: URL { URL(string: "http://backend-for-flutter-training.herokuapp.com")! }
    
    var path: String {
        switch self {
        case .loginUser:
            return "/user/login"
        case .getUserInfoById(let userId):
            return "/user/\(userId)"
        case .registerUser:
            return "/user/registration"
        case .updateUser(let userId, _, _, _, _, _, _):
            return "/user/\(userId)"
        case .uploadNewPost:
            return "/post"
        case .getPostById(let postId):
            return "/post/\(postId)"
        case .getAllPostsOnPage:
            return "/post"
        case .likePostWIthId(let postId):
            return "/post/\(postId)/like"
        case .addCommentToPostWithId(let postId, _):
            return "/comment/\(postId)"
        case .getCommentsOnPostById(let postId):
            return "/comment/\(postId)"
        case .getCommentWithIdUnderPostWithId(let postId, let commentId):
            return "/comment/\(postId)/\(commentId)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .loginUser, .registerUser, .uploadNewPost, .likePostWIthId, .addCommentToPostWithId:
            return .post
        case .getUserInfoById, .getPostById, .getAllPostsOnPage, .getCommentsOnPostById, .getCommentWithIdUnderPostWithId:
            return .get
        case .updateUser:
            return .put
        }
    }
    
    var task: Task {
        switch self {
        case let .loginUser(email, password):
            return .requestParameters(parameters: ["email": email, "password": password], encoding: JSONEncoding.default)
        case .getUserInfoById:
            return .requestPlain
        case let .registerUser(nickname, website, firstname, password, lastname):
            return .requestParameters(parameters: ["nickname": nickname,
                                                   "website": website,
                                                   "firstname": firstname,
                                                   "password": password,
                                                   "lastname": lastname], encoding: JSONEncoding.default)
        case let .updateUser(_, name, hashedPassword, nickname, website, firstname, lastname):
            return .requestParameters(parameters: ["name": name,
                                                   "hashed_password": hashedPassword,
                                                   "nickname": nickname,
                                                   "website": website,
                                                   "firstname": firstname,
                                                   "lastname": lastname], encoding: JSONEncoding.default)
            // FIXME: to think about this request
        case let .uploadNewPost(post):
            return .requestParameters(parameters: ["title": post.title,
                                                   "photos_url": post.photos_url,
                                                   "text": post.text], encoding: JSONEncoding.default)
        case .getPostById:
            return .requestPlain
        case let .getAllPostsOnPage(pageId):
            return .requestParameters(parameters: ["page": pageId], encoding: URLEncoding.queryString)
        case let .likePostWIthId(postId):
            return .requestPlain
        case let .addCommentToPostWithId(postId, text):
            return .requestParameters(parameters: ["text": text], encoding: JSONEncoding.default)
        case let .getCommentsOnPostById(postId):
            return .requestPlain
        case let .getCommentWithIdUnderPostWithId(commentId, postId):
            return .requestPlain
        }
    }
    
    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}
