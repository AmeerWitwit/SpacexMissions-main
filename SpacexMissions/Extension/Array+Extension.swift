//
//  Array+Extension.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/17/22.


import Foundation

extension Array {
    
    subscript (safe index: Int) -> Element? {
        return self.indices ~= index ? self[index] : nil
    }
    
}
