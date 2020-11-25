//
//  UIView_Anchor.swift
//  tie
//
//  Created by Romain Roche on 17/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit

public extension UIView {
    
    enum Guide {
        case none
        case margin
        case safeArea
    }
    
    func topClip(guide: Guide = .none) -> TieClip<NSLayoutYAxisAnchor> {
        switch guide {
        case .none: return .top(self.topAnchor)
        case .margin: return .top(self.layoutMarginsGuide.topAnchor)
        case .safeArea: return .top(self.safeAreaLayoutGuide.topAnchor)
        }
    }
    
    func leadingClip(guide: Guide = .none) -> TieClip<NSLayoutXAxisAnchor> {
        switch guide {
        case .none: return .top(self.leadingAnchor)
        case .margin: return .top(self.layoutMarginsGuide.leadingAnchor)
        case .safeArea: return .top(self.safeAreaLayoutGuide.leadingAnchor)
        }
    }
    
    func bottomClip(guide: Guide = .none) -> TieClip<NSLayoutYAxisAnchor> {
        switch guide {
        case .none: return .top(self.bottomAnchor)
        case .margin: return .top(self.layoutMarginsGuide.bottomAnchor)
        case .safeArea: return .top(self.safeAreaLayoutGuide.bottomAnchor)
        }
    }
    
    func trailingClip(guide: Guide = .none) -> TieClip<NSLayoutXAxisAnchor> {
        switch guide {
        case .none: return .top(self.trailingAnchor)
        case .margin: return .top(self.layoutMarginsGuide.trailingAnchor)
        case .safeArea: return .top(self.safeAreaLayoutGuide.trailingAnchor)
        }
    }
    
    func centerXClip(guide: Guide = .none) -> TieClip<NSLayoutXAxisAnchor> {
        switch guide {
        case .none: return .top(self.centerXAnchor)
        case .margin: return .top(self.layoutMarginsGuide.centerXAnchor)
        case .safeArea: return .top(self.safeAreaLayoutGuide.centerXAnchor)
        }
    }
    
    func centerYClip(guide: Guide = .none) -> TieClip<NSLayoutYAxisAnchor> {
        switch guide {
        case .none: return .top(self.centerYAnchor)
        case .margin: return .top(self.layoutMarginsGuide.centerYAnchor)
        case .safeArea: return .top(self.safeAreaLayoutGuide.centerYAnchor)
        }
    }
    
    func widthClip(guide: Guide = .none) -> TieClip<NSLayoutDimension> {
        switch guide {
        case .none: return .top(self.widthAnchor)
        case .margin: return .top(self.layoutMarginsGuide.widthAnchor)
        case .safeArea: return .top(self.safeAreaLayoutGuide.widthAnchor)
        }
    }
    
    func heightClip(guide: Guide = .none) -> TieClip<NSLayoutDimension> {
        switch guide {
        case .none: return .top(self.heightAnchor)
        case .margin: return .top(self.layoutMarginsGuide.heightAnchor)
        case .safeArea: return .top(self.safeAreaLayoutGuide.heightAnchor)
        }
    }
    
    func xAxisClip(
        guide: Guide = .none
    ) -> [TieClip<NSLayoutXAxisAnchor>] {
        switch guide {
        case .none: return [.leading(self.leadingAnchor),
                            .trailing(self.trailingAnchor)]
        case .margin: return [.leading(self.layoutMarginsGuide.leadingAnchor),
                              .trailing(self.layoutMarginsGuide.trailingAnchor)]
        case .safeArea: return [.leading(self.safeAreaLayoutGuide.leadingAnchor),
                                .trailing(self.safeAreaLayoutGuide.trailingAnchor)]
        }
    }
    
    func yAxisClip(
        guide: Guide = .none
    ) -> [TieClip<NSLayoutYAxisAnchor>] {
        switch guide {
        case .none: return [.leading(self.topAnchor),
                            .trailing(self.bottomAnchor)]
        case .margin: return [.leading(self.layoutMarginsGuide.topAnchor),
                              .trailing(self.layoutMarginsGuide.bottomAnchor)]
        case .safeArea: return [.leading(self.safeAreaLayoutGuide.topAnchor),
                                .trailing(self.safeAreaLayoutGuide.bottomAnchor)]
        }
    }
    
    func dimensionClip(
        guide: Guide = .none
    ) -> [TieClip<NSLayoutDimension>] {
        switch guide {
        case .none: return [.leading(self.widthAnchor),
                            .trailing(self.heightAnchor)]
        case .margin: return [.leading(self.layoutMarginsGuide.widthAnchor),
                              .trailing(self.layoutMarginsGuide.heightAnchor)]
        case .safeArea: return [.leading(self.safeAreaLayoutGuide.widthAnchor),
                                .trailing(self.safeAreaLayoutGuide.heightAnchor)]
        }
    }
    
}
