//
//  CustomPostCard.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 23/12/23.
//

import UIKit

class CustomPostCard: UIView {
    
    lazy var usernamePhoto: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "person.circle.fill")
        image.tintColor = .black
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Username"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    lazy var postLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Os spurs nao estao bem na temporada."
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var likeImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "heart.fill")
        image.tintColor = .orange
        return image
    }()
    
    lazy var likeNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1K"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomPostCard: ViewCodeType {
    func buildViewHierarchy() {
        addSubview(usernamePhoto)
        addSubview(titleLabel)
        addSubview(postLabel)
        addSubview(likeImage)
        addSubview(likeNumber)
    }
    
    func setupConstraints() {
        usernamePhoto.anchor(
            top: topAnchor,
            left: leftAnchor,
            topConstant: 5,
            leftConstant: 5,
            widthConstant: 20,
            heightConstant: 20
        )
        
        titleLabel.anchor(
            top: topAnchor,
            left: usernamePhoto.rightAnchor,
            topConstant: 7,
            leftConstant: 5
        )
        
        postLabel.anchor(
            top: usernamePhoto.bottomAnchor,
            left: leftAnchor,
            topConstant: 10,
            leftConstant: 10
        )
        
        likeImage.anchor(
            left: leftAnchor,
            bottom: bottomAnchor,
            leftConstant: 5,
            bottomConstant: 5,
            widthConstant: 15,
            heightConstant: 15
        )
        
        likeNumber.anchor(
            left: likeImage.rightAnchor,
            bottom: bottomAnchor,
            leftConstant: 5,
            bottomConstant: 5
        )
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .clear
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 12
    }
}
