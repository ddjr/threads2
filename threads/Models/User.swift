//
//  User.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import Foundation
struct User {
    let name: String
    let handle: String
    let bio: String
    let profilePic: String
    let followers: [String] // [userId]
    let following: [String] // [userId]
}
