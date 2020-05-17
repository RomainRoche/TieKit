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

    let innerView = UIView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.innerView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.innerView)
        self.innerView.backgroundColor = .green
        
        self.innerView.top() ~~> self.view.top(margin: true) + 20
        self.innerView.height() --= 87
        self.innerView.leading() -- self.view.leading()
        self.innerView.bottom() -- self.view.bottom() - 30
        self.innerView.trailing() -- self.view.trailing() - 12
    }


}

