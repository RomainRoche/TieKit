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
infix operator ---  : MultiplicationPrecedence

public extension NSLayoutAnchor where AnchorType == NSLayoutXAxisAnchor {
    
    @discardableResult static func ~~> (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(greaterThanOrEqualTo: rhs)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }
    
    @discardableResult static func <~~ (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(lessThanOrEqualTo: rhs, constant: 0)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }

    @discardableResult static func --- (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(equalTo: rhs)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }
    
}

public extension NSLayoutAnchor where AnchorType == NSLayoutYAxisAnchor {
    
    @discardableResult static func ~~> (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(greaterThanOrEqualTo: rhs)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }
    
    @discardableResult static func <~~ (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(lessThanOrEqualTo: rhs)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }

    @discardableResult static func --- (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(equalTo: rhs)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }
    
}

infix operator --=  : MultiplicationPrecedence
infix operator ~>=  : MultiplicationPrecedence
infix operator <~=  : MultiplicationPrecedence

public extension NSLayoutAnchor where AnchorType == NSLayoutDimension {
    
    @discardableResult static func ~~> (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(greaterThanOrEqualTo: rhs)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }
    
    @discardableResult static func <~~ (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(lessThanOrEqualTo: rhs)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }

    @discardableResult static func --- (
        lhs: NSLayoutAnchor<AnchorType>,
        rhs: NSLayoutAnchor<AnchorType>
    ) -> TieConstraint {
        let c = lhs.constraint(equalTo: rhs)
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }
    
}

public extension NSLayoutDimension {

    @discardableResult static func --= <F: BinaryFloatingPoint>(
        lhs: NSLayoutDimension,
        rhs: F
    ) -> TieConstraint {
        let c = lhs.constraint(equalToConstant: CGFloat(rhs))
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }

    @discardableResult static func ~>= <F: BinaryFloatingPoint>(
        lhs: NSLayoutDimension,
        rhs: F
    ) -> TieConstraint {
        let c = lhs.constraint(greaterThanOrEqualToConstant: CGFloat(rhs))
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }

    @discardableResult static func <~= <F: BinaryFloatingPoint>(
        lhs: NSLayoutDimension,
        rhs: F
    ) -> TieConstraint {
        let c = lhs.constraint(lessThanOrEqualToConstant: CGFloat(rhs))
        c.isActive = true
        return TieConstraint(
            item: c.firstItem as Any, attribute: c.firstAttribute,
            relatedBy: c.relation,
            toItem: c.secondItem, attribute: c.secondAttribute,
            multiplier: c.multiplier, constant: c.constant
        )
    }

}
