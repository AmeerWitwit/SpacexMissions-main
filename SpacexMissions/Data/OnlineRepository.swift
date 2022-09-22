//
//  OnlineRepository.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/18/22.


import Foundation
import Combine

class OnlineRepository: Repository {
    
    let sessionManager = SessionManager(session: URLSession.shared, dataDecoder: JSONDataDecoder())
    
    func fetchCompany() -> AnyPublisher<Company, Error> {
        let resourceRequest: AnyPublisher<CompanyResource, Error> = sessionManager.decodableRequest(CompanyRequest())
        return resourceRequest
            .map { Company(resource: $0) }
            .eraseToAnyPublisher()
    }
    
    func fetchMissions() -> AnyPublisher<[Mission], Error> {
        let resourceRequest: AnyPublisher<[MissionResource], Error> = sessionManager.decodableRequest(MissionsRequest())
        return resourceRequest
            .map { $0.map { Mission(resource: $0) } }
            .eraseToAnyPublisher()
    }
    
}
