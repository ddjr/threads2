//
//  Thread.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import Foundation

struct Thread: Codable, Hashable {    
    let id: String
    var handle: String
    var text: String
    var likes: [String]
    var replies: [String]
    let createdAt: TimeInterval
}
