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
                        
            superView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0)
            
            self.innerView.translatesAutoresizingMaskIntoConstraints = false
            superView.addSubview(self.innerView)
            self.innerView.backgroundColor = .lightGray
                
            let i = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            let d: CGFloat = 20
            
            self.innerView.topClip() --> superView.topClip(guide: .none)
            self.innerView.bottomClip() <~~ superView.bottomClip() + .s + .m
            self.innerView.leadingClip() --> superView.leadingClip()
            self.innerView.trailingClip() --> superView.trailingClip() - .xl
            self.innerView.heightClip() --= 200
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(self.innerView.frame)")
    }

}

