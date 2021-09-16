//
//  CustomCollectionViewCell.swift
//  MovieCollectionView
//
//  Created by sara.batista.d.felix on 12/09/21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CustomCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
//        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "CUSTOM"
        label.textColor = .white
        label.textAlignment = .center
        label.backgroundColor = .blue
        label.layer.masksToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.cornerRadius = 10
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(imageView)
        contentView.clipsToBounds = true
        
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViews() {
        
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: -40).isActive = true
        imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor ,constant: 5).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: 5).isActive = true
        
//        titleLabel.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 8).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -8).isActive = true
    }
}
