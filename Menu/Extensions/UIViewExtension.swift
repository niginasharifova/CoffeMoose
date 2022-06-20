//
//  UIViewExtension.swift
//  Menu
//
//  Created by beehive-iOS on 6/20/22.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
