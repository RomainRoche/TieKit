//
//  TieInsets.swift
//  TieKit
//
//  Created by Romain Roche on 20/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import Foundation

/// A collection of insets.
struct TieInsets {
    
    /// The top size.
    var top: TieSize?
    /// The leasing size.
    var leading: TieSize?
    /// The bottom size.
    var bottom: TieSize?
    /// The trailing size.
    var trailing: TieSize?
    
    /// Init insets.
    /// - Parameter top: Optional, the top size.
    /// - Parameter leading: Optional, the leading size.
    /// - Parameter bottom: Optional, the bottom size.
    /// - Parameter trailing: Optional, the trailing size.
    init(
        top: TieSize? = nil,
        leading: TieSize? = nil,
        bottom: TieSize? = nil,
        trailing: TieSize? = nil
    ) {
        self.top = top
        self.leading = leading
        self.bottom = bottom
        self.trailing = trailing
    }
    
}
