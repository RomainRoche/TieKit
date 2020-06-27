//
//  UIView_Anchor.swift
//  tie
//
//  Created by Romain Roche on 17/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

public extension UIView {
    
    func topClip(margin: Bool = false) -> TieClip<NSLayoutYAxisAnchor> {
        return margin
            ? .top(self.layoutMarginsGuide.topAnchor)
            : .top(self.topAnchor)
    }
    
    func leadingClip(margin: Bool = false) -> TieClip<NSLayoutXAxisAnchor> {
        return margin
            ? .leading(self.layoutMarginsGuide.leadingAnchor)
            : .leading(self.leadingAnchor)
    }
    
    func bottomClip(margin: Bool = false) -> TieClip<NSLayoutYAxisAnchor> {
        return margin
            ? .bottom(self.layoutMarginsGuide.bottomAnchor)
            : .bottom(self.bottomAnchor)
    }
    
    func trailingClip(margin: Bool = false) -> TieClip<NSLayoutXAxisAnchor> {
        return margin
            ? .trailing(self.layoutMarginsGuide.trailingAnchor)
            : .trailing(self.trailingAnchor)
    }
    
    func centerXClip(margin: Bool = false) -> TieClip<NSLayoutXAxisAnchor> {
        return margin
            ? .centerX(self.layoutMarginsGuide.centerXAnchor)
            : .centerX(self.centerXAnchor)
    }
    
    func centerYClip(margin: Bool = false) -> TieClip<NSLayoutYAxisAnchor> {
        return margin
            ? .centerY(self.layoutMarginsGuide.centerYAnchor)
            : .centerY(self.centerYAnchor)
    }
    
    func widthClip(margin: Bool = false) -> TieClip<NSLayoutDimension> {
        return margin
            ? .width(self.layoutMarginsGuide.widthAnchor)
            : .width(self.widthAnchor)
    }
    
    func heightClip(margin: Bool = false) -> TieClip<NSLayoutDimension> {
        return margin
            ? .height(self.layoutMarginsGuide.heightAnchor)
            : .height(self.heightAnchor)
    }
    
    func xAxisClip(
        margin: Bool = false
    ) -> [TieClip<NSLayoutXAxisAnchor>] {
        return margin
            ? [.leading(self.layoutMarginsGuide.leadingAnchor),
               .trailing(self.layoutMarginsGuide.trailingAnchor)]
            : [.leading(self.leadingAnchor),
               .trailing(self.trailingAnchor)]
    }
    
    func yAxisClip(
        margin: Bool = false
    ) -> [TieClip<NSLayoutYAxisAnchor>] {
        return margin
            ? [.top(self.layoutMarginsGuide.topAnchor),
               .bottom(self.layoutMarginsGuide.bottomAnchor)]
            : [.top(self.topAnchor),
               .bottom(self.bottomAnchor)]
    }
    
    func dimensionClip(
        margin: Bool = false
    ) -> [NSLayoutDimension] {
        return margin ? [
            self.layoutMarginsGuide.widthAnchor,
            self.layoutMarginsGuide.heightAnchor
        ] : [self.widthAnchor, self.heightAnchor]
    }
    
}
