//
//  NSLayoutConstraint_Operators.swift
//  tie
//
//  Created by Romain Roche on 17/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

public extension NSLayoutConstraint {
    
    static func + (lhs: NSLayoutConstraint, rhs: Double) {
        lhs.constant = lhs.constant + CGFloat(rhs)
    }
    
    static func - (lhs: NSLayoutConstraint, rhs: Double) {
        lhs.constant = lhs.constant - CGFloat(rhs)
    }
        
}
