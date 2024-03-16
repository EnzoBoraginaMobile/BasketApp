//
//  RegisterViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 10/11/23.
//

import UIKit

class RegisterViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "REGISTER"
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
    
    lazy var usernameTextField: CustomTextField = {
        let tx = CustomTextField()
        tx.translatesAutoresizingMaskIntoConstraints = false
        tx.titleLabel.text = "Username"
        tx.TextField.placeholder = "Username"
        return tx
    }()
    
    lazy var emailTextField: CustomTextField = {
        let tx = CustomTextField()
        tx.translatesAutoresizingMaskIntoConstraints = false
        tx.titleLabel.text = "Email"
        tx.TextField.placeholder = "Exemple@gmail.com"
        return tx
    }()
    
    lazy var passwordTextField: CustomTextField = {
        let tx = CustomTextField()
        tx.translatesAutoresizingMaskIntoConstraints = false
        tx.titleLabel.text = "Password"
        tx.TextField.placeholder = "**********"
        return tx
    }()
    
    lazy var passwordConfirmTextField: CustomTextField = {
        let tx = CustomTextField()
        tx.translatesAutoresizingMaskIntoConstraints = false
        tx.titleLabel.text = "Confirm password"
        tx.TextField.placeholder = "**********"
        return tx
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("NEXT", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemOrange
        button.addTarget(self, action: #selector(tapFavTeam), for: .touchUpInside)
        button.layer.cornerRadius = 25
        return button
    }()
    
    @objc func tapFavTeam() {
        let vc = FavTeamViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension RegisterViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(imageLogo)
        view.addSubview(usernameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(passwordConfirmTextField)
        view.addSubview(registerButton)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            centerX: view.centerXAnchor
        )
        
        imageLogo.anchor(
            top: titleLabel.bottomAnchor,
            centerX: view.centerXAnchor,
            topConstant: 10,
            widthConstant: 100,
            heightConstant: 100
        )
        
        usernameTextField.anchor(
            top: imageLogo.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            topConstant: 5,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 70
        )
        
        emailTextField.anchor(
            top: usernameTextField.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            topConstant: 35,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 70
        )
        
        passwordTextField.anchor(
            top: emailTextField.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            topConstant: 35,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 70
        )
        
        passwordConfirmTextField.anchor(
            top: passwordTextField.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            topConstant: 35,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 70
        )
        
        registerButton.anchor(
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            centerX: view.centerXAnchor,
            bottomConstant: 60,
            widthConstant: 190,
            heightConstant: 50
        )
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .white
    }
}
