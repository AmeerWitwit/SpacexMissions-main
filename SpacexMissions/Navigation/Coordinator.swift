//
//  Coordinator.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/18/22.


import UIKit

protocol Coordinator: AnyObject {
    var parent: Coordinator? { get set }
    func start()
}
