//
//  ViewController.swift
//  AutoLayout
//
//  Created by Sara Batista dos Santos Felix (P) on 24/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let redView = UIView()
        redView.backgroundColor = .red
        redView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
        redView.center = view.center
        
        view.addSubview(redView)
    }
}

