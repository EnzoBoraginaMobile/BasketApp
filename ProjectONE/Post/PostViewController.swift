//
//  PostViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 22/12/23.
//

import UIKit

class PostViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "FEED"
        label.textColor = .purple
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    lazy var postTableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.separatorStyle = .none
        view.backgroundColor = .clear
        view.delaysContentTouches = false
        view.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.identifier)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        postTableView.delegate = self
        postTableView.dataSource = self
    }
}

extension PostViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(postTableView)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            centerX: view.centerXAnchor,
            topConstant: 10
        )
        
        postTableView.anchor(
            top: titleLabel.bottomAnchor,
            left: view.leftAnchor,
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            right: view.rightAnchor,
            topConstant: 14
        )
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .white
    }
}

extension PostViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }

    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
