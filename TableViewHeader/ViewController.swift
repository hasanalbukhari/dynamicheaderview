//
//  ViewController.swift
//  TableViewHeader
//
//  Created by Hasan S. Al-Bukhari on 3/15/17.
//  Copyright © 2017 Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func donwloadFinished(value: CGFloat) {
        imageHeightConstraint.constant += value
        self.view.layoutIfNeeded()
        self.view.layoutSubviews()
        self.view.setNeedsLayout()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        headerView.frame = containerView.frame
        
        print(containerView.frame.size.height)
    }
    
    @IBAction func minuesButtonTapped(_ sender: UIButton) {
        donwloadFinished(value: -20)
    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        donwloadFinished(value: 20)
    }
}
