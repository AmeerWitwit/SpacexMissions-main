//
//  CompanyResource.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/19/22.


import Foundation

struct CompanyResource: Decodable {
    
    let name: String
    let founder: String
    let founded: Int
    let employees: Int
    let launchSites: Int
    let valuation: Int
    
    enum CodingKeys: String, CodingKey {
        case name, founder, founded, employees, valuation
        case launchSites = "launch_sites"
    }
    
}
