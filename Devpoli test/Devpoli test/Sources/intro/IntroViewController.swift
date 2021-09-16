//
//  IntroViewController.swift
//  Devpoli test
//
//  Created by sara.batista.d.felix on 13/09/21.
//

import UIKit

// final pra n ser herdada por ninguém
final class IntroViewController: UIViewController {
    
    
// a lazy "atrasa", fzdo a chamada só qdo a var for iniciada
    private lazy var helloLabel: UILabel = {
        let helloLabel = UILabel()
        helloLabel.text = "Hello World"
        helloLabel.font = UIFont.systemFont(ofSize: 22)
        helloLabel.textColor = UIColor.black
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        return helloLabel
    }()
    
    private lazy var nameLabel: UILabel = {
        let name = UILabel()
        name.text = "{DevSara}"
        name.font = UIFont.systemFont(ofSize: 16)
        name.textColor = UIColor.darkGray
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addSubview()
        constraint()
    }
    
    private func addSubview() {
        view.addSubview(helloLabel)
    }
    
    private func constraint(){
        let constraint = [
            helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 12),
            nameLabel.centerXAnchor.constraint(equalTo: helloLabel.centerXAnchor)
        ]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
}
