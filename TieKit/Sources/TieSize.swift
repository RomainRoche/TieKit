//
//  TieSize.swift
//  TieKit
//
//  Created by Romain Roche on 18/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

/// The predefined sizes.
public enum TieSize: String {
    
    // MARK: - internal
    
    /// The power value.
    internal var power: Int {
        switch self {
        case .zero: return -1
        case .xs: return 0
        case .s: return 1
        case .m: return 2
        case .l: return 3
        case .xl: return 4
        case .xxl: return 5
        }
    }
    
    // MARK: - public
    
    /// The spacing multiplier to use.
    public static var spacing: Int = 4
    
    /// A zero px spacing.
    case zero
    /// A `TieSize.spaging * 2^0` px spacing.
    case xs
    /// A `TieSize.spaging * 2^1` px spacing.
    case s
    /// A `TieSize.spaging * 2^2` px spacing.
    case m
    /// A `TieSize.spaging * 2^3` px spacing.
    case l
    /// A `TieSize.spaging * 2^4` px spacing.
    case xl
    /// A `TieSize.spaging * 2^5` px spacing.
    case xxl
    
    /// The `CGFloat` spacing value.
    public var spacing: CGFloat {
        guard self != .zero else { return 0 }
        return CGFloat(TieSize.spacing) * pow(2, CGFloat(self.power))
    }
    
}
