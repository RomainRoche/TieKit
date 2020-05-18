//
//  TieSize.swift
//  TieKit
//
//  Created by Romain Roche on 18/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

public enum TieSize: String {
    
    public static var spacing: Int = 4
    
    case zero
    case xs
    case s
    case m
    case l
    case xl
    case xxl
    
    var value: Int {
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
    
    var spacing: CGFloat {
        guard self != .zero else { return 0 }
        return CGFloat(TieSize.spacing) * pow(2, CGFloat(self.value))
    }
    
}
