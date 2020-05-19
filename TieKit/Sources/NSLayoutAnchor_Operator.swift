//
//  NSLayoutAnchor_Operator.swift
//  tie
//
//  Created by Romain Roche on 17/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

infix operator ~~>  : MultiplicationPrecedence
infix operator <~~  : MultiplicationPrecedence
infix operator --   : MultiplicationPrecedence

public extension NSLayoutAnchor where AnchorType == NSLayoutXAxisAnchor {
    
    @discardableResult static func ~~> (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(greaterThanOrEqualTo: rhs)
        c.isActive = true
        return c
    }
    
    @discardableResult static func <~~ (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(lessThanOrEqualTo: rhs, constant: 0)
        c.isActive = true
        return c
    }

    @discardableResult static func -- (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(equalTo: rhs)
        c.isActive = true
        return c
    }
    
}

public extension NSLayoutAnchor where AnchorType == NSLayoutYAxisAnchor {
    
    @discardableResult static func ~~> (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(greaterThanOrEqualTo: rhs)
        c.isActive = true
        return c
    }
    
    @discardableResult static func <~~ (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(lessThanOrEqualTo: rhs)
        c.isActive = true
        return c
    }

    @discardableResult static func -- (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(equalTo: rhs)
        c.isActive = true
        return c
    }
    
}

public extension NSLayoutAnchor where AnchorType == NSLayoutDimension {
    
    @discardableResult static func ~~> (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(greaterThanOrEqualTo: rhs)
        c.isActive = true
        return c
    }
    
    @discardableResult static func <~~ (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(lessThanOrEqualTo: rhs)
        c.isActive = true
        return c
    }

    @discardableResult static func -- (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(equalTo: rhs)
        c.isActive = true
        return c
    }
    
}

infix operator --=  : MultiplicationPrecedence
infix operator ~>=  : MultiplicationPrecedence
infix operator <~=  : MultiplicationPrecedence

public extension NSLayoutDimension {

    @discardableResult static func --= <F: BinaryFloatingPoint>(
        lhs: NSLayoutDimension,
        rhs: F
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(equalToConstant: CGFloat(rhs))
        c.isActive = true
        return c
    }

    @discardableResult static func ~>= <F: BinaryFloatingPoint>(
        lhs: NSLayoutDimension,
        rhs: F
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(greaterThanOrEqualToConstant: CGFloat(rhs))
        c.isActive = true
        return c
    }

    @discardableResult static func <~= <F: BinaryFloatingPoint>(
        lhs: NSLayoutDimension,
        rhs: F
    ) -> NSLayoutConstraint {
        let c = lhs.constraint(lessThanOrEqualToConstant: CGFloat(rhs))
        c.isActive = true
        return c
    }

}
