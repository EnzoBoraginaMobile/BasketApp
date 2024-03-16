//
//  HomeViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 10/11/23.
//

import UIKit

class HomeViewController: UIViewController {

    static let identifier: String = "NewsModel"
    
    let data: [NewsModel] = [
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa"),
        NewsModel(newsTitle: "Hawks voltam a vencer", newsContent: "o Atlanta Hawks e o Philadelphia76ers se enfrentaram na última rodada da NBA,", newsContent2: "Com o placar final de 121 a 127, os visitantes da Geórgia triunfaram sobre os donos da casa")
    ]
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "NEWS"
        label.textColor = .purple
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    lazy var testTableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.separatorStyle = .none
        view.backgroundColor = .clear
        view.delaysContentTouches = false
        view.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension HomeViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(testTableView)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            centerX: view.centerXAnchor,
            topConstant: 10
        )
        
        testTableView.anchor(
            top: titleLabel.bottomAnchor,
            left: view.leftAnchor,
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            right: view.rightAnchor,
            topConstant: 14
        )

    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .clear
        testTableView.dataSource = self
        testTableView.delegate = self
    }
}

extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }

    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as! HomeTableViewCell
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
