//
//  TieConstraint.swift
//  TieKit
//
//  Created by Romain Roche on 18/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

@IBDesignable
public final class TieConstraint: NSLayoutConstraint {
    
    // MARK: - private
    
    private func resetSpacing() {
        self.constant = self.spacing.reduce(0, { return $0 + $1.spacing})
            * self.multiplier
    }
    
    @IBInspectable
    private var spacingName: String {
        get {
            return self.spacing.reduce("", { return $0 + $1.rawValue })
        }
        set {
            let all = newValue.split(separator: "+").map { String($0) }
            self.spacing = all.map {
                return TieSize(rawValue: $0.lowercased()) ?? .zero
            }
        }
    }
    
    // MARK: - public
    
    public var spacing: [TieSize] = [.m] {
        didSet { self.resetSpacing() }
    }
    
}
