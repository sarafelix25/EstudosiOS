//
//  ViewController.swift
//  PassDataExample
//
//  Created by Sara on 26/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("text"), object: nil)
    }

    @objc func didGetNotification(_ notification: Notification) {
        let text = notification.object as! String?
        label.text = text
    }
    
    @IBAction func didTapButton() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "other") as! OtherViewController
        vc.modalPresentationStyle = .fullScreen
//        vc.completionHandler = { text in
//            self.label.text = text
//        }
        present(vc, animated: true)
    }
}

