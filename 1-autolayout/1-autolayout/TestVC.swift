//
//  TestVC.swift
//  1-autolayout
//
//  Created by anjun on 15/12/28.
//  Copyright © 2015年 cptrue. All rights reserved.
//

import UIKit

class TestVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = UIColor.redColor()
        self.view.addSubview(view)
        
        let viewFrame = CGRect(x: 50, y: 150, width: 150, height: 150)
        view.translatesAutoresizingMaskIntoConstraints  = false
        
//        let viewLeft = NSLayoutConstraint(item: view, attribute: .Leading, relatedBy: .Equal, toItem: self.view, attribute: .Leading, multiplier: 1, constant: CGRectGetMinX(viewFrame))
//        let viewTop = NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: self.view, attribute: .Top, multiplier: 1, constant: CGRectGetMinY(viewFrame))
//        let viewWidth = NSLayoutConstraint(item: view, attribute: .Width, relatedBy: .GreaterThanOrEqual, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: CGRectGetMinX(viewFrame))
//        let viewHeigh = NSLayoutConstraint(item: view, attribute: .Height, relatedBy: .GreaterThanOrEqual, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: CGRectGetMinY(viewFrame))
//        self.view .addConstraints([viewLeft,viewTop,viewWidth,viewHeigh] )
     
        let views = ["view":view,"self.view":self.view]
        self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[view(>=150)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-100-[view(>=150)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
    }
}
