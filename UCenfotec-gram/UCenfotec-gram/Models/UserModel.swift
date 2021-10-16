//
//  UserModel.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/12/21.
//

import Foundation
struct UserModel: Identifiable, Codable {
    var id: String?
    var nick: String
    var email: String
    var password: String
    var profile: ProfileModel?
}
