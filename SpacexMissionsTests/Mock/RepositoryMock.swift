//
//  RepositoryMock.swift
//  SpacexMissionsTests
//
//  Created by Ameer Witwit on 9/22/22.


import Foundation
import Combine
@testable import SpacexMissions

class RepositoryMock: Repository {
    
    private let shouldReturnError: Bool
    
    init(shouldReturnError: Bool = false) {
        self.shouldReturnError = shouldReturnError
    }
    
    func fetchCompany() -> AnyPublisher<Company, Error> {
        if shouldReturnError {
            return Fail<Company, Error>(error: CustomError.general).eraseToAnyPublisher()
        }
        return Just<Company>(Company.makeMock()).setFailureType(to: Error.self).eraseToAnyPublisher()
    }
    
    func fetchMissions() -> AnyPublisher<[Mission], Error> {
        if shouldReturnError {
            return Fail<[Mission], Error>(error: CustomError.general).eraseToAnyPublisher()
        }
        let missions: [Mission] = [.makeFalconMock(), .makeSatelliteMock(), .makeStarlinkMock()]
        return Just<[Mission]>(missions).setFailureType(to: Error.self).eraseToAnyPublisher()
    }
    
}
