//
//  TieSize.swift
//  TieKit
//
//  Created by Romain Roche on 18/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

/// The predefined sizes.
public enum TieSize {
    
    // MARK: - internal
    
    /// The power value.
    internal var power: Int {
        switch self {
        case .zero, .custom(_): return -1
        case .xs: return 0
        case .s: return 1
        case .m: return 2
        case .l: return 3
        case .xl: return 4
        case .xxl: return 5
        }
    }
    
    /// Init from a string.
    ///
    /// If the string does not match a size, `.zero` is returned.
    /// - Parameter string: The string value.
    internal init(from string: String) {
        switch string {
        case "zero": self = .zero
        case "xs": self = .xs
        case "s": self = .s
        case "m": self = .m
        case "l": self = .l
        case "xl": self = .xl
        case "xxl": self = .xxl
        default: self = .zero
        }
    }
    
    /// The string representation
    internal var stringValue: String {
        switch self {
        case .zero: return "zero"
        case .xs: return "xs"
        case .s: return "s"
        case .m: return "m"
        case .l: return "l"
        case .xl: return "xl"
        case .xxl: return "xxl"
        case .custom(_): return "custom"
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
    /// A custom size.
    case custom(CGFloat)
    
    /// The `CGFloat` spacing value.
    public var spacing: CGFloat {
        if case let .custom(size) = self {
            return size
        }
        if case .zero = self {
            return 0
        }
        return CGFloat(TieSize.spacing) * pow(2, CGFloat(self.power))
    }
    
    /// Sum sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: A `.custom` size.
    static func + (lhs: TieSize, rhs: TieSize) -> TieSize {
        return .custom(lhs.spacing + rhs.spacing)
    }
    
    /// Substract sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: A `.custom` size.
    static func - (lhs: TieSize, rhs: TieSize) -> TieSize {
        return .custom(lhs.spacing - rhs.spacing)
    }
    
    /// Multiply sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: A `.custom` size.
    static func * (lhs: TieSize, rhs: TieSize) -> TieSize {
        return .custom(lhs.spacing * rhs.spacing)
    }
    
    /// Divide sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: A `.custom` size.
    static func / (lhs: TieSize, rhs: TieSize) -> TieSize {
        guard rhs.spacing != 0 else { return .custom(lhs.spacing) }
        return .custom(lhs.spacing / rhs.spacing)
    }
    
}
