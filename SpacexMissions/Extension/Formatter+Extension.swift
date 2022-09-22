//
//  Formatter.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.


import Foundation

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = "."
        return formatter
    }()
}
