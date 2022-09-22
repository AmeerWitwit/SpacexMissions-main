//
//  MissionsRequest.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.


import Foundation

struct MissionsRequest: Request {
    
    var url: URL? {
        var components = URLComponents()
        
        components.scheme = "https"
        components.host = "api.spacexdata.com"
        components.path = "/v3/launches"
        
        return components.url
    }
    
}
