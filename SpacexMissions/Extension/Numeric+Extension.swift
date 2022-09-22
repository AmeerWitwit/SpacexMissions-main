//
//  Numeric+Extension.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/22/22.


import Foundation

extension Numeric {
    var formattedWithSeparator: String { Formatter.withSeparator.string(for: self) ?? "" }
}
