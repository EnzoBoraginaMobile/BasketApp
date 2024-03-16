//
//  UserViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 13/11/23.
//

import UIKit

class UserViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PROFILE"
        label.textColor = .purple
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    lazy var imageCard: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 60
        image.backgroundColor = .black
        return image
    }()
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Username"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    lazy var followersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "FOLLOWERS"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    lazy var followLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "FOLLOW"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    lazy var followersNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10K"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    lazy var followNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "15K"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()

    lazy var favoriteTeamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Time favorito: "
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        return label
    }()
    
    lazy var favoriteTeam: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Golden State Warriors"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var postTableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.separatorStyle = .none
        view.backgroundColor = .clear
        view.delaysContentTouches = false
        view.register(UserTableViewCell.self, forCellReuseIdentifier: UserTableViewCell.identifier)
        return view
    }()
    
    lazy var logoutButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("LOGOUT", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemOrange
        button.addTarget(self, action: #selector(tapLogin), for: .touchUpInside)
        button.layer.cornerRadius = 20
        return button
    }()
    
    @objc func tapLogin() {
        let vc = LoginViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        postTableView.delegate = self
        postTableView.dataSource = self
    }
}

extension UserViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(imageCard)
        view.addSubview(usernameLabel)
        view.addSubview(followersLabel)
        view.addSubview(followLabel)
        view.addSubview(followersNumberLabel)
        view.addSubview(followNumberLabel)
        view.addSubview(favoriteTeamLabel)
        view.addSubview(favoriteTeam)
        view.addSubview(postTableView)
        view.addSubview(logoutButton)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            centerX: view.centerXAnchor,
            topConstant: 10
        )
        
        imageCard.anchor(
            top: titleLabel.bottomAnchor,
            centerX: view.centerXAnchor,
            topConstant: 20,
            widthConstant: 120,
            heightConstant: 120
        )
        
        usernameLabel.anchor(
            top: imageCard.bottomAnchor,
            centerX: view.centerXAnchor,
            topConstant: 10
        )
        
        followersLabel.anchor(
            top: usernameLabel.bottomAnchor,
            left: view.leftAnchor,
            topConstant: 20,
            leftConstant: 90
        )
        
        followLabel.anchor(
            top: usernameLabel.bottomAnchor,
            left: followersLabel.rightAnchor,
            topConstant: 20,
            leftConstant: 40
        )
        
        followersNumberLabel.anchor(
            top: followersLabel.bottomAnchor,
            left: view.leftAnchor,
            topConstant: 5,
            leftConstant: 120
        )
        
        followNumberLabel.anchor(
            top: followLabel.bottomAnchor,
            left: view.leftAnchor,
            topConstant: 5,
            leftConstant: 245
        )
        
        favoriteTeamLabel.anchor(
            top: followersNumberLabel.bottomAnchor,
            left: view.leftAnchor,
            topConstant: 30,
            leftConstant: 85
        )
        
        favoriteTeam.anchor(
            top: followersNumberLabel.bottomAnchor,
            left: favoriteTeamLabel.rightAnchor,
            topConstant: 30,
            leftConstant: 5
        )
        
        postTableView.anchor(
            top: favoriteTeamLabel.bottomAnchor,
            left: view.leftAnchor,
            bottom: logoutButton.topAnchor,
            right: view.rightAnchor,
            topConstant: 14,
            bottomConstant: 14
        )
        
        logoutButton.anchor(
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            centerX: view.centerXAnchor,
            bottomConstant: 30,
            widthConstant: 160,
            heightConstant: 40
        )
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .white
    }
}

extension UserViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }

    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as! UserTableViewCell
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
