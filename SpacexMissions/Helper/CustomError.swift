//
//  CustomError.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.
//

import Foundation

enum CustomError: Error {
    case general
    case network
    case custom(message: String)
}

extension CustomError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .general: return Localizer.generalError.localized
        case .network: return Localizer.networkError.localized
        case .custom(let message): return message
        }
    }
}
