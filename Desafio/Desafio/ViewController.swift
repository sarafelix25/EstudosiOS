//
//  ViewController.swift
//  Desafio
//
//  Created by sara.batista.d.felix on 21/06/21.
//

import UIKit

class ViewController: UIViewController {

    let stackView: UIStackView = {
        let stackview: UIStackView = .init(frame: .zero)
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.distribution = .fillProportionally
        stackview.axis = .vertical
        stackview.spacing = 16
//        stackview.alignment = .bottom
//        stackview.backgroundColor = .green
        return stackview
    }()
    
    let topStackView: UIStackView = {
        let stackview: UIStackView = .init(frame: .zero)
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.distribution = .fillEqually
        stackview.axis = .horizontal
        stackview.spacing = 20
        stackview.alignment = .fill
//        stackview.backgroundColor = .gray
        return stackview
    }()
    
    let centerStackView: UIStackView = {
        let stackview: UIStackView = .init(frame: .zero)
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.distribution = .fillProportionally
        stackview.axis = .vertical
        stackview.spacing = 16
//        stackview.alignment = .center
//        stackview.backgroundColor = .orange
        return stackview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewHierarchy()
        setupConstraints()
        configureViews()
    }
    
    let topView1: UIView = .init()
    let topView2: UIView = .init()
    let topView3: UIView = .init()
    
    let centerView1: UIView = .init()
    let centerView2: UIView = .init()
    
    func setupViewHierarchy() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(topStackView)
        stackView.addArrangedSubview(centerStackView)
        
        topStackView.addArrangedSubview(topView1)
        topStackView.addArrangedSubview(topView2)
        topStackView.addArrangedSubview(topView3)
        
        centerStackView.addArrangedSubview(centerView1)
        centerStackView.addArrangedSubview(centerView2)
       
    }
    
    func setupConstraints() {
        stackView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor, constant: 16).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        topView1.translatesAutoresizingMaskIntoConstraints = false
        topView1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        topView2.translatesAutoresizingMaskIntoConstraints = false
        topView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
     
        topView3.translatesAutoresizingMaskIntoConstraints = false
        topView3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        centerView1.translatesAutoresizingMaskIntoConstraints = false
        centerView1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        centerView2.translatesAutoresizingMaskIntoConstraints = false
        centerView2.heightAnchor.constraint(greaterThanOrEqualToConstant: 200).isActive = true
    }
    
    func configureViews() {
        topView1.backgroundColor = .blue
        topView2.backgroundColor = .blue
        topView3.backgroundColor = .blue
        
        centerView1.backgroundColor = .orange
        centerView2.backgroundColor = .orange

    }
}

/*
 para add bordas
 
 view.layer.cornerRadius = 5;
 view.layer.masksToBounds = true;
*/

