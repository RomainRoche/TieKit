//
//  UIView_Anchor.swift
//  tie
//
//  Created by Romain Roche on 17/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

public extension UIView {
    
    func top(margin: Bool = false) -> NSLayoutYAxisAnchor {
        return margin
            ? self.layoutMarginsGuide.topAnchor
            : self.topAnchor
    }
    
    func leading(margin: Bool = false) -> NSLayoutXAxisAnchor {
        return margin
            ? self.layoutMarginsGuide.leadingAnchor
            : self.leadingAnchor
    }
    
    func bottom(margin: Bool = false) -> NSLayoutYAxisAnchor {
        return margin
            ? self.layoutMarginsGuide.bottomAnchor
            : self.bottomAnchor
    }
    
    func trailing(margin: Bool = false) -> NSLayoutXAxisAnchor {
        return margin
            ? self.layoutMarginsGuide.trailingAnchor
            : self.trailingAnchor
    }
    
    func centerX(margin: Bool = false) -> NSLayoutXAxisAnchor {
        return margin
            ? self.layoutMarginsGuide.centerXAnchor
            : self.centerXAnchor
    }
    
    func centerY(margin: Bool = false) -> NSLayoutYAxisAnchor {
        return margin
            ? self.layoutMarginsGuide.centerYAnchor
            : self.centerYAnchor
    }
    
    func width(margin: Bool = false) -> NSLayoutDimension {
        return margin
            ? self.layoutMarginsGuide.widthAnchor
            : self.widthAnchor
    }
    
    func height(margin: Bool = false) -> NSLayoutDimension {
        return margin
            ? self.layoutMarginsGuide.heightAnchor
            : self.heightAnchor
    }
    
}
