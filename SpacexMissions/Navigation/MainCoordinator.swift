//
//  MainCoordinator.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/18/22.


import UIKit

class MainCoordinator: Coordinator {
    
    var children = [Coordinator]()
    
    var parent: Coordinator?
    
    let window: UIWindow
    
    private let repository = OnlineRepository()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewModel = LaunchListViewModel(repository: repository)
        let viewController = LaunchListViewController(viewModel: viewModel, coordinator: self)
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
}
