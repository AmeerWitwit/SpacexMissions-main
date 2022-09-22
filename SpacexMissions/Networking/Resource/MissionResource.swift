//
//  MissionResource.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/19/22.


import Foundation

struct MissionResource: Decodable {
    
    struct LinksResource: Decodable {
        let patchImage: String?
        let articleLink: String?
        let videoLink: String?
        let wikipedia: String?
        
        enum CodingKeys: String, CodingKey {
            case patchImage = "mission_patch_small"
            case articleLink = "article_link"
            case videoLink = "video_link"
            case wikipedia
        }
    }
    
    let name: String
    let dateTimestamp: Int
    let rocket: RocketResource
    let links: LinksResource
    let launchSuccess: Bool?
    
    enum CodingKeys: String, CodingKey {
        case name = "mission_name"
        case dateTimestamp = "launch_date_unix"
        case launchSuccess = "launch_success"
        case rocket, links
    }
    
}
