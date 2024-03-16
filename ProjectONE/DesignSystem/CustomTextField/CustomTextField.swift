//
//  CustomTextField.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 10/11/23.
//

import UIKit

class CustomTextField: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    lazy var borderView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 6
        return view
    }()
    
    lazy var TextField: UITextField = {
        let tx = UITextField()
        tx.translatesAutoresizingMaskIntoConstraints = false
        return tx
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CustomTextField: ViewCodeType{
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(borderView)
        borderView.addSubview(TextField)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: topAnchor,
            left: leftAnchor,
            topConstant: 20,
            leftConstant: 20
        )
        
        borderView.anchor(
            top: titleLabel.bottomAnchor,
            left: leftAnchor,
            right: rightAnchor,
            topConstant: 8,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 50
        )
        
        TextField.anchor(
            top: borderView.bottomAnchor,
            left: borderView.leftAnchor,
            centerY: borderView.centerYAnchor,
            topConstant: 8,
            leftConstant: 20,
            heightConstant: 20
        )
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
}
