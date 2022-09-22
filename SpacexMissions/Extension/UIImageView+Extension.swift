//
//  UIImageView+Extension.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/18/22.


import UIKit
import Kingfisher

extension UIImageView {
    
    func setImage(with url: URL?) {
        guard let url = url else { return }
        DispatchQueue.main.async {
            self.kf.setImage(with: url)
        }
    }
    
}
