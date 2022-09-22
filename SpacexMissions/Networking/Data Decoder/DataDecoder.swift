//
//  DataDecoder.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.


import Foundation
import Combine

protocol DataDecoder {
    func decode<T: Decodable>(_ data: Data) -> AnyPublisher<T, Error>
}

