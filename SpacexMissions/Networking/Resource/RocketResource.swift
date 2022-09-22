//
//  RocketResource.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/19/22.


import Foundation

struct RocketResource: Decodable {
    let name: String
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case name = "rocket_name"
        case type = "rocket_type"
    }
}
