//
//  ViewController.swift
//  TieKit-test
//
//  Created by Romain Roche on 17/05/2020.
//  Copyright © 2020 rroche. All rights reserved.
//

import UIKit
import TieKit

class ViewController: UIViewController {

    // MARK: - private
    
    private let innerView = UIView(frame: .zero)
    
    @IBOutlet private weak var greenView: UIView?
    
    // MARK: - public
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let superView = self.greenView {
            self.innerView.translatesAutoresizingMaskIntoConstraints = false
            superView.addSubview(self.innerView)
            self.innerView.backgroundColor = .lightGray
                
            let i = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            let d: CGFloat = 20
            
            self.innerView.topClip() --> superView.topClip()
            self.innerView.bottomClip() <~~ superView.bottomClip(margin: false) + .s + .m
//            self.innerView.heightClip() --= 87
            self.innerView.leadingClip() --> superView.leadingClip()
            self.innerView.trailingClip() --> superView.trailingClip() - .xl
//            self.innerView.leadingClip() -- superView.leadingClip()
//            self.innerView.bottomClip() -- superView.bottomClip() - i.top
//            _ = self.innerView.trailingClip() -- superView.trailingClip() - d
        }
        
    }

}

