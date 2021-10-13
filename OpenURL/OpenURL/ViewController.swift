//
//  ViewController.swift
//  OpenURL
//
//  Created by Sara on 13/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnOpenWebsite(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.google.com/")! as URL, options: [:], completionHandler: nil )
    }
    

}

