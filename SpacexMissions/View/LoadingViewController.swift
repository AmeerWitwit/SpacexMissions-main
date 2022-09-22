//
//  LoadingViewController.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/22/22.


import UIKit

class LoadingViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        addViews()
    }
    
    private func addViews() {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.startAnimating()
        view.addSubview(spinner)

        NSLayoutConstraint.activate([
            spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
