//
//  UIView+Extention.swift
//  Third App
//
//  Created by Juan García on 8/29/17.
//  Copyright © 2017 JAG.media. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradienBackground(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
