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
        self.constant = self.spacing.spacing * self.multiplier
    }
    
    @IBInspectable
    private var spacingName: String {
        get {
            return self.spacing.stringValue
        }
        set {
            let all = newValue.split(separator: "+").map { String($0) }
            if all.count == 1 {
                self.spacing = TieSize(from: all[0])
                return
            }
            self.spacing = all.reduce(.zero, {$0 + TieSize(from: $1)})
        }
    }
    
    // MARK: - public
    
    public var spacing: TieSize = .m {
        didSet { self.resetSpacing() }
    }
    
}
