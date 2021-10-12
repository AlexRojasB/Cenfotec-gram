//
//  File.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/12/21.
//

import Foundation
struct FeedModel: Codable, Identifiable {
    var id: String
    var picture: String
    var likes: Int
    var comments: [CommentModel]
    var owner: OwnerModel
    var updatedAt: Date
}
