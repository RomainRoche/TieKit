//
//  TieClip.swift
//  TieKit
//
//  Created by Romain Roche on 20/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

public enum TieClip<AnchorType: AnyObject> {
    case top(NSLayoutAnchor<AnchorType>)
    case leading(NSLayoutAnchor<AnchorType>)
    case bottom(NSLayoutAnchor<AnchorType>)
    case trailing(NSLayoutAnchor<AnchorType>)
    case centerX(NSLayoutAnchor<AnchorType>)
    case centerY(NSLayoutAnchor<AnchorType>)
    case width(NSLayoutAnchor<AnchorType>)
    case height(NSLayoutAnchor<AnchorType>)
    
    var anchor: NSLayoutAnchor<AnchorType> {
        switch self {
        case .top(let a): return a
        case .leading(let a): return a
        case .bottom(let a): return a
        case .trailing(let a): return a
        case .centerX(let a): return a
        case .centerY(let a): return a
        case .width(let a): return a
        case .height(let a): return a
        }
    }
}

public extension TieClip where AnchorType == NSLayoutXAxisAnchor {
    
    // MARK: - XAxis
    
    @discardableResult static func ~~> (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor ~~> rhs.anchor
    }
    
    @discardableResult static func <~~ (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor <~~ rhs.anchor
    }
    
    @discardableResult static func --- (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor --- rhs.anchor
    }
    
}

public extension TieClip where AnchorType == NSLayoutYAxisAnchor {
    
    // MARK: - YAxis
    
    @discardableResult static func ~~> (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor ~~> rhs.anchor
    }
    
    @discardableResult static func <~~ (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor <~~ rhs.anchor
    }
    
    @discardableResult static func --- (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor --- rhs.anchor
    }
    
}

public extension TieClip where AnchorType == NSLayoutDimension {
    
    // MARK: - Dimension
    
    @discardableResult static func ~~> (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor ~~> rhs.anchor
    }
    
    @discardableResult static func <~~ (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor <~~ rhs.anchor
    }
    
    @discardableResult static func --- (
        lhs: TieClip<AnchorType>,
        rhs: TieClip<AnchorType>
    ) -> NSLayoutConstraint {
        return lhs.anchor --- rhs.anchor
    }
    
    @discardableResult static func --= <F: BinaryFloatingPoint>(
        lhs: TieClip<AnchorType>,
        rhs: F
    ) -> NSLayoutConstraint {
        return (lhs.anchor as! NSLayoutDimension) --= rhs
    }

    @discardableResult static func ~>= <F: BinaryFloatingPoint>(
        lhs: TieClip<AnchorType>,
        rhs: F
    ) -> NSLayoutConstraint {
        return (lhs.anchor as! NSLayoutDimension) ~>= rhs
    }

    @discardableResult static func <~= <F: BinaryFloatingPoint>(
        lhs: TieClip<AnchorType>,
        rhs: F
    ) -> NSLayoutConstraint {
        return (lhs.anchor as! NSLayoutDimension) <~= rhs
    }
    
}
