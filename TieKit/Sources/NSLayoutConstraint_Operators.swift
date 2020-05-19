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
    /// - Returns: The constraint.
    @discardableResult static func + <F: BinaryFloatingPoint>(
        lhs: NSLayoutConstraint, rhs: F
    ) -> NSLayoutConstraint{
        lhs.constant = lhs.constant + CGFloat(rhs)
        return lhs
    }
    
    /// Increase the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: The `TieSize` spacing to add to the constant.
    /// - Returns: The constraint.
    @discardableResult static func + (
        lhs: NSLayoutConstraint, rhs: TieSize
    ) -> NSLayoutConstraint {
        lhs.constant = lhs.constant + rhs.spacing
        return lhs
    }
    
    /// Increase the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: A `TieSize` array to sum and add to the constant.
    /// - Returns: The constraint.
    @discardableResult static func + (
        lhs: NSLayoutConstraint, rhs: [TieSize]
    ) -> NSLayoutConstraint {
        lhs.constant = lhs.constant + rhs.reduce(0, {$0 + $1.spacing})
        return lhs
    }
    
    /// Dcrease the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: The value to substract to the constant.
    /// - Returns: The constraint.
    @discardableResult static func - <F: BinaryFloatingPoint>(
        lhs: NSLayoutConstraint, rhs: F
    ) -> NSLayoutConstraint {
        lhs.constant = lhs.constant - CGFloat(rhs)
        return lhs
    }
    
    /// Dcrease the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: The `TieSize` spacing to substract to the constant.
    /// - Returns: The constraint.
    @discardableResult static func - (
        lhs: NSLayoutConstraint, rhs: TieSize
    ) -> NSLayoutConstraint {
        lhs.constant = lhs.constant - rhs.spacing
        return lhs
    }
    
    /// Dcrease the constant of a layout constraint.
    /// - Parameter lhs: The constraint.
    /// - Parameter rhs: A `TieSize` array to sum and substract to the constant.
    /// - Returns: The constraint.
    @discardableResult static func - (
        lhs: NSLayoutConstraint, rhs: [TieSize]
    ) -> NSLayoutConstraint {
        lhs.constant = lhs.constant - rhs.reduce(0, {$0 + $1.spacing})
        return lhs
    }
        
}
