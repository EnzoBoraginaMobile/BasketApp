//
//  CustomCard.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 20/11/23.
//

import UIKit

class CustomCard: UIView {
 
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "NEWS"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = .purple
        return label
    }()
    
    lazy var newsTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Spurs quebram recorde de derrotas na temporada"
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    lazy var newsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O Spurs conheceu sua 17 derrota na temporada"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
        return label
    }()
    
    lazy var newsLineLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ao perder para o Houston Rockets."
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
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

extension CustomCard: ViewCodeType {
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(newsTitleLabel)
        addSubview(newsLabel)
        addSubview(newsLineLabel)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: topAnchor,
            left: leftAnchor,
            topConstant: 6,
            leftConstant: 10
        )
        
        newsTitleLabel.anchor(
            top: titleLabel.bottomAnchor,
            left: leftAnchor,
            topConstant: 5,
            leftConstant: 10
        )

        newsLabel.anchor(
            top: newsTitleLabel.bottomAnchor,
            left: leftAnchor,
            topConstant: 2,
            leftConstant: 10
        )
        
        newsLineLabel.anchor(
            top: newsLabel.bottomAnchor,
            left: leftAnchor,
            topConstant: 1,
            leftConstant: 10
        )
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .clear
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 12
    }
}
