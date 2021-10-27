//
//  OtherViewController.swift
//  PassDataExample
//
//  Created by Sara on 26/10/21.
//

import UIKit

class OtherViewController: UIViewController {
    
//    public var completionHandler: ((String?) -> Void)?
    
    @IBOutlet var field: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapSave() {
        NotificationCenter.default.post(name: Notification.Name("text"), object: field.text)
//        completionHandler?(field.text)
        dismiss(animated: true, completion: nil)
    }
}
