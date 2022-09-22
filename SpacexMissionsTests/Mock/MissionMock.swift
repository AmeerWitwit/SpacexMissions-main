//
//  MissionMock.swift
//  SpacexMissionsTests
//
//  Created by Ameer Witwit on 9/22/22.


import Foundation
@testable import SpacexMissions

extension Mission {
    
    static func makeFalconMock() -> Mission {
        return Mission(name: "Falcon",
                       dateTimestamp: 1581983740,
                       rocketName: "Falcon",
                       rocketType: "Normal",
                       launchSuccess: true,
                       patchImage: nil,
                       articleLink: "www.google.com",
                       videoLink: nil,
                       wikipediaLink: nil)
    }
    
    static func makeSatelliteMock() -> Mission {
        return Mission(name: "Satellite",
                       dateTimestamp: 1603553460,
                       rocketName: "Satellite",
                       rocketType: "Normal",
                       launchSuccess: false,
                       patchImage: nil,
                       articleLink: nil,
                       videoLink: "www.google.com",
                       wikipediaLink: nil)
    }
    
    static func makeStarlinkMock() -> Mission {
        return Mission(name: "Starlink",
                       dateTimestamp: 1641012520,
                       rocketName: "Starlink",
                       rocketType: "Normal",
                       launchSuccess: false,
                       patchImage: nil,
                       articleLink: nil,
                       videoLink: nil,
                       wikipediaLink: "www.google.com")
    }
    
}
