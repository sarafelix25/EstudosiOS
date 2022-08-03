//
//  ViewController.swift
//  RevisionXIB
//
//  Created by Sara Batista dos Santos Felix on 8/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: TestView!

    override func viewDidLoad() {
        super.viewDidLoad()
        testView.mainLabel.text = "teste teste teste"
//        testView.mainLabel.text = "sup sup"
    }
}

