//
//  GamesViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 13/11/23.
//

import UIKit

class GamesViewController: UIViewController {

    static let identifier: String = "GameModel"
    
    let data: [GameModel] = [
        GameModel(gamematch: "Golden State Warrios x Los Angeles Lakers", hometeam: "GSW: ", awayteam: "LAL: "),
        GameModel(gamematch: "Chicago Bulls x Boston Celtics", hometeam: "CHI: ", awayteam: "BOS: "),
        GameModel(gamematch: "Millwalke Bucks x Brooklyn Nets", hometeam: "MIL: ", awayteam: "BRO: "),
        GameModel(gamematch: "San Antonio Spurs x Los Angeles Clippers", hometeam: "SAN", awayteam: "LAC"),
        GameModel(gamematch: "Orlando Magic x Miami Heat", hometeam: "ORL", awayteam: "MIA"),
        GameModel(gamematch: "Philadenphia 76ers x Atkanta Hawks", hometeam: "PHI", awayteam: "ATL"),
        GameModel(gamematch: "Denver Nuggets x Detroit Piston", hometeam: "DEN", awayteam: "DET"),
        GameModel(gamematch: "Golden State Warrios x Chicago Bulls ", hometeam: "GSW", awayteam: "CHI"),
        GameModel(gamematch: "Denver Nuggets x Los Angeles Lakers", hometeam: "DEN", awayteam: "LAL"),
        GameModel(gamematch: "Toronto Raptors x Miami Heat", hometeam: "TOR", awayteam: "MIA"),
        GameModel(gamematch: "Utah Jazz x New York Knicks", hometeam: "UTA", awayteam: "NYK"),
        GameModel(gamematch: "New Orleans Pelicans x Charlote Hornets", hometeam: "PEL", awayteam: "HOR")
    ]
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ON LIVE GAMES"
        label.textColor = .purple
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    lazy var gamesTableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.separatorStyle = .none
        view.backgroundColor = .clear
        view.delaysContentTouches = false
        view.register(GamesTableViewCell.self, forCellReuseIdentifier: GamesTableViewCell.identifier)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension GamesViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(gamesTableView)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            centerX: view.centerXAnchor,
            topConstant: 10
        )
        
        gamesTableView.anchor(
            top: titleLabel.bottomAnchor,
            left: view.leftAnchor,
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            right: view.rightAnchor,
            topConstant: 10
        )
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .white
        gamesTableView.delegate = self
        gamesTableView.dataSource = self
    }
}

extension GamesViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }

    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as! GamesTableViewCell
        cell.setUpCell(data: data[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
}
