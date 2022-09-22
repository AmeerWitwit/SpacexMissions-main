//
//  RequestMock.swift
//  SpacexMissionsTests
//
//  Created by Ameer Witwit on 9/22/22.


import Foundation
@testable import SpacexMissions

struct RequestMock: Request {
    
    var url: URL? {
        return URL(string: "www.google.com")
    }
    
}
