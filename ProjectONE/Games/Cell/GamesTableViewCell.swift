//
//  GamesTableViewCell.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 21/12/23.
//

import UIKit

class GamesTableViewCell: UITableViewCell {
 
    static let identifier: String = "GamesTableViewCell"
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 12
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ON LIVE GAME:"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = .orange
        return label
    }()
    
    lazy var teamsPlayingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
        return label
    }()
    
    lazy var homeTeamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    lazy var homeScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "000"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    lazy var awayTeamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    lazy var awayScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "000"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    public func setUpCell(data:GameModel){
        teamsPlayingLabel.text = data.gamematch
        homeTeamLabel.text = data.hometeam
        awayTeamLabel.text = data.awayteam
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension GamesTableViewCell: ViewCodeType {
    func buildViewHierarchy() {
        addSubview(containerView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(teamsPlayingLabel)
        containerView.addSubview(homeTeamLabel)
        containerView.addSubview(homeScoreLabel)
        containerView.addSubview(awayTeamLabel)
        containerView.addSubview(awayScoreLabel)
    }
    
    func setupConstraints() {
        containerView.anchor(
            top: topAnchor,
            left: leftAnchor,
            right: rightAnchor,
            topConstant: 20,
            leftConstant: 20,
            rightConstant: 20,
            heightConstant: 80
        )
        
        titleLabel.anchor(
            top: containerView.topAnchor,
            left: containerView.leftAnchor,
            topConstant: 6,
            leftConstant: 10
        )
        
        teamsPlayingLabel.anchor(
            top: titleLabel.bottomAnchor,
            left: containerView.leftAnchor,
            topConstant: 5,
            leftConstant: 10
        )
        
        homeTeamLabel.anchor(
            top: teamsPlayingLabel.bottomAnchor,
            left: containerView.leftAnchor,
            topConstant: 2,
            leftConstant: 10
        )
        
        homeScoreLabel.anchor(
            top: teamsPlayingLabel.bottomAnchor,
            left: homeTeamLabel.rightAnchor,
            topConstant: 3,
            leftConstant: 5
        )
        
        awayTeamLabel.anchor(
            top: homeTeamLabel.bottomAnchor,
            left: containerView.leftAnchor,
            topConstant: 3,
            leftConstant: 10
        )
        
        awayScoreLabel.anchor(
            top: homeScoreLabel.bottomAnchor,
            left: awayTeamLabel.rightAnchor,
            topConstant: 3,
            leftConstant: 5
        )
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .clear
//        layer.borderWidth = 2
//        layer.borderColor = UIColor.black.cgColor
//        layer.cornerRadius = 12
    }
}
