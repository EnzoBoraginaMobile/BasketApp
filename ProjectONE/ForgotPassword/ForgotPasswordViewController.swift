//
//  ForgotPasswordViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 10/11/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "RECOVERY PASSWORD"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        return label
    }()

    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "basketball.fill")
        image.tintColor = .orange
        return image
    }()
    
    lazy var emailTextField: CustomTextField = {
        let tx = CustomTextField()
        tx.translatesAutoresizingMaskIntoConstraints = false
        tx.titleLabel.text = "Email"
        tx.TextField.placeholder = "Exemple@gmail.com"
        return tx
    }()
    
    lazy var recoveryButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("RECOVERY PASSWORD", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemOrange
        button.addTarget(self, action: #selector(tapLogin), for: .touchUpInside)
        button.layer.cornerRadius = 25
        return button
    }()
    
    @objc func tapLogin() {
        let vc = LoginViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension ForgotPasswordViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(imageLogo)
        view.addSubview(emailTextField)
        view.addSubview(recoveryButton)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            centerX: view.centerXAnchor,
            topConstant: 5
        )
        
        imageLogo.anchor(
            top: titleLabel.bottomAnchor,
            centerX: view.centerXAnchor,
            topConstant: 20,
            widthConstant: 100,
            heightConstant: 100
        )
        
        emailTextField.anchor(
            top: imageLogo.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            topConstant: 30,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 70
        )
        
        recoveryButton.anchor(
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            centerX: view.centerXAnchor,
            bottomConstant: 40,
            widthConstant: 250,
            heightConstant: 50
        )
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .white
    }
}
