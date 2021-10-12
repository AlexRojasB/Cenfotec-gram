//
//  ProfileModel.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/12/21.
//

import Foundation
struct ProfileModel:  Codable {
    var name: String
    var age: Int
    var picture: String
    var userInfo: UserModel
}
