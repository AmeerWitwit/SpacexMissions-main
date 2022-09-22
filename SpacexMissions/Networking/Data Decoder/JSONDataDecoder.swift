//
//  JSONDataDecoder.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.


import Foundation
import Combine

class JSONDataDecoder: DataDecoder {
    
    func decode<T: Decodable>(_ data: Data) -> AnyPublisher<T, Error> {
        return Just(data)
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError( { CustomError.custom(message: $0.localizedDescription) } )
            .eraseToAnyPublisher()
    }
    
}
