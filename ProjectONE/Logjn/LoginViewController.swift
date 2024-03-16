//
//  LoginViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 10/11/23.
//

import UIKit

class LoginViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "LIVE BASKETBALL"
        label.textColor = .orange
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    lazy var imageLogin: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "basketball.fill")
        image.tintColor = .orange
        return image
    }()
    
    lazy var emailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.TextField.placeholder = "Exemple@gmail.com"
        textField.titleLabel.text = "Email"
        return textField
    }()
    
    lazy var passwordTextfield: CustomTextField = {
        let textField = CustomTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.TextField.placeholder = "**********"
        textField.titleLabel.text = "Password"
        return textField
    }()
    
    lazy var forgetPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forget your password?", for: .normal)
        button.setTitleColor(.systemOrange, for: .normal)
        button.addTarget(self, action: #selector(tapForget), for: .touchUpInside)
        return button
    }()
    
    @objc func tapForget() {
        let vc = ForgotPasswordViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("LOGIN", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemOrange
        button.addTarget(self, action: #selector(tapLogin), for: .touchUpInside)
        button.layer.cornerRadius = 25
        return button
    }()
    
    @objc func tapLogin() {
        let vc = TabBarViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("REGISTER", for: .normal)
        button.setTitleColor(.systemOrange, for: .normal)
        button.addTarget(self, action: #selector(tapRegister), for: .touchUpInside)
        return button
    }()
    
    @objc func tapRegister() {
        let vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension LoginViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(imageLogin)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextfield)
        view.addSubview(forgetPasswordButton)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            centerX: view.centerXAnchor,
            topConstant: 25
        )
        
        imageLogin.anchor(
            top: titleLabel.bottomAnchor,
            centerX: view.centerXAnchor,
            topConstant: 25,
            widthConstant: 100,
            heightConstant: 100
        )
        
        emailTextField.anchor(
            top: imageLogin.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            topConstant: 50,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 70
        )
        
        passwordTextfield.anchor(
            top: emailTextField.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            topConstant: 40,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 70
        )
        
        forgetPasswordButton.anchor(
            top: passwordTextfield.bottomAnchor,
            left: view.leftAnchor,
            topConstant: 35,
            leftConstant: 40
        )
        
        loginButton.anchor(
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            centerX: view.centerXAnchor,
            bottomConstant: 90,
            widthConstant: 190,
            heightConstant: 50
        )
        
        registerButton.anchor(
            top: loginButton.bottomAnchor,
            centerX: view.centerXAnchor,
            topConstant: 20
        )
        
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .white
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}


