//
//  User.swift
//  ToDoList
//
//  Created by Luthfi Arya M on 08/08/24.
//

import Foundation

struct User: Codable {
    let id: String
    let fullname: String
    let email: String
    let joined: TimeInterval
}
