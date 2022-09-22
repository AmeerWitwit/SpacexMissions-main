//
//  UIView+Extension.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/19/22.


import UIKit

extension UIView {
    
    func pinToSuperview(topConstraint: CGFloat = 0, bottomConstraint: CGFloat = 0, leadingConstraint: CGFloat = 0, traillingConstriant: CGFloat = 0) {
        guard let superview = superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview.topAnchor, constant: topConstraint).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: bottomConstraint).isActive = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: leadingConstraint).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: traillingConstriant).isActive = true
    }
    
    func pinToSuperview(with padding: CGFloat) {
        pinToSuperview(topConstraint: padding, bottomConstraint: -padding, leadingConstraint: padding, traillingConstriant: -padding)
    }
    
}
