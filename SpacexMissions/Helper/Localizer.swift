//
//  Localizer.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.

import Foundation

enum Localizer: String {
    
    case generalError
    case networkError
    case company
    case launches
    case companyInfo
    case mission
    case dateTime
    case rocket
    case daysFromNow
    case daysSinceLaunch
    case at
    case wikipedia
    case article
    case video
    case cancel
    case from
    case to
    case done
    case successfulLaunches
    case order
    case asc
    case dsc
    
    var localized: String {
        return NSLocalizedString(rawValue, comment: "")
    }
    
}
