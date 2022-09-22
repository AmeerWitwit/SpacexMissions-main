//
//  Date+Extension.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/19/22.


import Foundation

extension Date {
    
    var justTime: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: self)
    }
    
    var justDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
    
    var justYear: Int? {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY"
        return Int(formatter.string(from: self))
    }
    
    var daysSinceToday: Int? {
        return Calendar.current.dateComponents([.day], from: self, to: Date()).day
    }
    
}
