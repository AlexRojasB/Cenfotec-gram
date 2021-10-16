//
//  CommentModel.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/12/21.
//

import Foundation
struct CommentModel: Identifiable, Codable {
    var id: String
    var owner: OwnerModel
    var comment: String
}
