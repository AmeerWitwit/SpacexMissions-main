//
//  Repository.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/18/22.


import Foundation
import Combine

protocol Repository {
    func fetchCompany() -> AnyPublisher<Company, Error>
    func fetchMissions() -> AnyPublisher<[Mission], Error>
}
