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
            
            self.innerView.top() ~~> superView.top(margin: true) + [.s, .m]
            self.innerView.height() --= 87
            self.innerView.leading() -- superView.leading()
            self.innerView.bottom() -- superView.bottom() - i.top
            self.innerView.trailing() -- superView.trailing() - d
        }
        
    }

}

