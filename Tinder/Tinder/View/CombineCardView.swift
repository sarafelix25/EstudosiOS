//
//  CombineCardView.swift
//  Tinder
//
//  Created by Sara Batista dos Santos Felix (P) on 24/02/22.
//

import UIKit

class CombineCardView: UIView {
    
    var user: User? {
        didSet {
            if let user = user {
                photoView.image = UIImage(named: user.image)
                nameLabel.text = user.name
                ageLabel.text = String(user.age)
                phraseLabel.text = user.phrase
            }
        }
    }
    
    let photoView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pessoa-1")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = .textBoldLabel(32, textColor: .white)
    let ageLabel: UILabel = .textLabel(28, textColor: .white)
    let phraseLabel: UILabel = .textLabel(28, textColor: .white, numberOfLines: 2)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        nameLabel.text = "Ana Laura"
        nameLabel.addShadow()
        
        ageLabel.text = "20"
        ageLabel.addShadow()
        
        phraseLabel.text = "O último a dar match chama"
        phraseLabel.addShadow()
        
        addSubview(photoView)
        photoView.fillSuperview()
        
        let nameAgeStackView = UIStackView(arrangedSubviews: [nameLabel, ageLabel, UIView()])
        nameAgeStackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nameAgeStackView, phraseLabel, UIView()])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.fill(top: nil,
                       leading: leadingAnchor,
                       trailing: trailingAnchor,
                       bottom: bottomAnchor,
                       padding: .init(top: 0, left: 16, bottom: 16, right: 16)
        )
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
