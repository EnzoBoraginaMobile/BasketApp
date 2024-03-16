//
//  FavTeamViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 01/01/24.
//

import UIKit

class FavTeamViewController: UIViewController {
    
    let data: [TeamModel] = [
        
        TeamModel(image: UIImage(named: "Lakers"), team: "Los Angeles Lakers"),
        TeamModel(image: UIImage(named: "Toronto"), team: "Toronto Raptors"),
        TeamModel(image: UIImage(named: "Miami"), team: "Miami Heat"),
        TeamModel(image: UIImage(named: "Orlando"), team: "Orlando Magic"),
        TeamModel(image: UIImage(named: "Golden"), team: "Golden State Warriors"),
        TeamModel(image: UIImage(named: "Atlanta"), team: "Atlanta Hawks"),
        TeamModel(image: UIImage(named: "Oklahoma"), team: "Oklahoma City Thunder"),
        TeamModel(image: UIImage(named: "SanAntonio"), team: "San Antonio Spurs"),
        TeamModel(image: UIImage(named: "Utah"), team: "Utah Jazz"),
        TeamModel(image: UIImage(named: "NewYork"), team: "New York Knicks"),
        TeamModel(image: UIImage(named: "Pelicans"), team: "New Orleans Pelicans"),
        TeamModel(image: UIImage(named: "Hornets"), team: "Charolote Hornets"),
        TeamModel(image: UIImage(named: "Houston"), team: "Houston Rockets"),
        TeamModel(image: UIImage(named: "Phoenix"), team: "Phoenix Suns"),
        TeamModel(image: UIImage(named: "Cleveland"), team: "Cleveland Cavaliers"),
        TeamModel(image: UIImage(named: "Wizard"), team: "Whasington Wizards"),
        TeamModel(image: UIImage(named: "Clippers"), team: "Los Angeles Clippers"),
        TeamModel(image: UIImage(named: "Nets"), team: "Brooklyn Nets"),
        TeamModel(image: UIImage(named: "Celtics"), team: "Boston Celtics"),
        TeamModel(image: UIImage(named: "Chicago"), team: "Chicago Bulls"),
        TeamModel(image: UIImage(named: "Kings"), team: "Sacramento Kings"),
        TeamModel(image: UIImage(named: "Philadelphia"), team: "Philadelphia 76ers"),
        TeamModel(image: UIImage(named: "Indiana"), team: "Indiana Peacers"),
        TeamModel(image: UIImage(named: "Denver"), team: "Denver Nuggets"),
        TeamModel(image: UIImage(named: "Detroit"), team: "Detroit Pistons"),
        TeamModel(image: UIImage(named: "Portland"), team: "Portland Trail Blazers"),
        TeamModel(image: UIImage(named: "Minnesota"), team: "Minnesota timberwolfs"),
        TeamModel(image: UIImage(named: "Dallas"), team: "Dallas Mavericks"),
        TeamModel(image: UIImage(named: "Memphis"), team: "Memphis Grizzlies"),
        TeamModel(image: UIImage(named: "Bucks"), team: "Milwaukee Bucks")
    ]
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "REGISTER"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    lazy var chooseTeamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ESCOLHA SEU TIME FAVORITO: "
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    lazy var collectionCustom: CustomCollectionView = {
            let custom = CustomCollectionView()
            custom.translatesAutoresizingMaskIntoConstraints = false
            custom.collectionView.register(FavTeamCollectionViewCell.self, forCellWithReuseIdentifier: FavTeamCollectionViewCell.identifier)
            custom.setupTableViewProtocols(delegate: self, dataSource: self)
            custom.collectionView.isScrollEnabled = true
            custom.collectionView.contentInset = UIEdgeInsets(top: 0, left: 2, bottom: 0, right: 0)
            return custom
        }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("REGISTER", for: .normal)
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

extension FavTeamViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(chooseTeamLabel)
        view.addSubview(collectionCustom)
        view.addSubview(registerButton)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            centerX: view.centerXAnchor
        )
        
        chooseTeamLabel.anchor(
            top: titleLabel.bottomAnchor,
            centerX: view.centerXAnchor,
            topConstant: 40
        )
        
        collectionCustom.anchor(
            top: chooseTeamLabel.bottomAnchor,
            left: view.leftAnchor,
            right: view.rightAnchor,
            topConstant: 185,
            heightConstant: 240
        )
        
        registerButton.anchor(
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            centerX: view.centerXAnchor,
            bottomConstant: 40,
            widthConstant: 190,
            heightConstant: 50

        )
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .white
    }
}

extension FavTeamViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FavTeamCollectionViewCell.identifier, for: indexPath) as! FavTeamCollectionViewCell
        cell.setUpCell(data: data[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 220)
    }
}
