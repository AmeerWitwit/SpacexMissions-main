//
//  Company.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/18/22.


import Foundation

struct Company: Hashable {
    
    let name: String
    let founder: String
    let founded: Int
    let employees: Int
    let launchSites: Int
    let valuation: Int
    
}

extension Company {
    
    init(resource: CompanyResource) {
        self.name = resource.name
        self.founder = resource.founder
        self.founded = resource.founded
        self.employees = resource.employees
        self.launchSites = resource.launchSites
        self.valuation = resource.valuation
    }
    
}
