//
//  NSLayoutConstraint_Operators.swift
//  tie
//
//  Created by Romain Roche on 17/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

public extension NSLayoutConstraint {
    
    /// Increase the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: The value to add to the constant.
    static func + (lhs: NSLayoutConstraint, rhs: Double) {
        lhs.constant = lhs.constant + CGFloat(rhs)
    }
    
    /// Increase the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: The `TieSize` spacing to add to the constant.
    static func + (lhs: NSLayoutConstraint, rhs: TieSize) {
        lhs.constant = lhs.constant + rhs.spacing
    }
    
    /// Increase the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: A `TieSize` array to sum and add to the constant.
    static func + (lhs: NSLayoutConstraint, rhs: [TieSize]) {
        lhs.constant = lhs.constant + rhs.reduce(0, {$0 + $1.spacing})
    }
    
    /// Dcrease the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: The value to substract to the constant.
    static func - (lhs: NSLayoutConstraint, rhs: Double) {
        lhs.constant = lhs.constant - CGFloat(rhs)
    }
    
    /// Dcrease the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: The `TieSize` spacing to substract to the constant.
    static func - (lhs: NSLayoutConstraint, rhs: TieSize) {
        lhs.constant = lhs.constant - rhs.spacing
    }
    
    /// Dcrease the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: A `TieSize` array to sum and substract to the constant.
    static func - (lhs: NSLayoutConstraint, rhs: [TieSize]) {
        lhs.constant = lhs.constant - rhs.reduce(0, {$0 + $1.spacing})
    }
        
}
