//
//  SessionManager.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.


import Foundation
import Combine

class SessionManager {
    
    private let session: NetworkSession
    private let dataDecoder: DataDecoder
    
    init(session: NetworkSession, dataDecoder: DataDecoder) {
        self.session = session
        self.dataDecoder = dataDecoder
    }
    
    func decodableRequest<T: Decodable>(_ request: Request) -> AnyPublisher<T, Error> {
        return dataRequest(request).flatMap { data in
            self.dataDecoder.decode(data)
        }
        .eraseToAnyPublisher()
    }
    
    func dataRequest(_ request: Request) -> AnyPublisher<Data, Error> {
        guard let url = request.url else {
            return Fail(error: NSError()).eraseToAnyPublisher()
        }
        return session.loadData(from: url)
            .mapError( { CustomError.custom(message: $0.localizedDescription) } )
            .map( { $0.data } )
            .eraseToAnyPublisher()
    }
    
}
