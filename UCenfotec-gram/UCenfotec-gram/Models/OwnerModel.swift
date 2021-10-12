//
//  OwnerModel.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/12/21.
//

import Foundation
struct OwnerModel: Codable, Identifiable {
    var id: String
    var name: String
    var location: String
    var picture: String
}
