//
//  NetworkSession.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.


import Foundation
import Combine

protocol NetworkSession {
    func loadData(from url: URL) -> AnyPublisher<(data: Data, response: URLResponse), URLError>
}

extension URLSession: NetworkSession {
    
    func loadData(from url: URL) -> AnyPublisher<(data: Data, response: URLResponse), URLError> {
        return dataTaskPublisher(for: url).eraseToAnyPublisher()
    }
    
}
