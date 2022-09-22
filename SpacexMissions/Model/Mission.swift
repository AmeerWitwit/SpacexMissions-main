//
//  Mission.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/18/22.


import Foundation

struct Mission: Hashable {
    
    let name: String
    let dateTimestamp: Int
    let rocketName: String
    let rocketType: String
    let launchSuccess: Bool?
    let patchImage: String?
    let articleLink: String?
    let videoLink: String?
    let wikipediaLink: String?
    
}

extension Mission {
    
    init(resource: MissionResource) {
        self.name = resource.name
        self.dateTimestamp = resource.dateTimestamp
        self.rocketName = resource.rocket.name
        self.rocketType = resource.rocket.type
        self.launchSuccess = resource.launchSuccess
        self.patchImage = resource.links.patchImage
        self.articleLink = resource.links.articleLink
        self.videoLink = resource.links.videoLink
        self.wikipediaLink = resource.links.wikipedia
    }
    
}
