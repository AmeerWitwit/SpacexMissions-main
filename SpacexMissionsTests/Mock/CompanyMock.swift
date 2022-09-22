//
//  CompanyMock.swift
//  SpacexMissionsTests
//
//  Created by Ameer Witwit on 9/22/22.


import Foundation
@testable import SpacexMissions

extension Company {
    
    static func makeMock() -> Company {
        return Company(name: "SpaceX", founder: "Elon Musk", founded: 2002, employees: 123, launchSites: 3, valuation: 5)
    }
    
}
