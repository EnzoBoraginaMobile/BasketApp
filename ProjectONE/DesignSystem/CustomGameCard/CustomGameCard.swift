//
//  CustomGameCard.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 08/12/23.
//

import UIKit

class CustomGameCard: UIView {

    static let identifier: String = "CusomGameCard"
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomGameCard: ViewCodeType {
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(teamsPlayingLabel)
        addSubview(homeTeamLabel)
        addSubview(homeScoreLabel)
        addSubview(awayTeamLabel)
        addSubview(awayScoreLabel)
    }
    
    func setupConstraints() {
        titleLabel.anchor(
            top: topAnchor,
            left: leftAnchor,
            topConstant: 6,
            leftConstant: 10
        )
        
        teamsPlayingLabel.anchor(
            top: titleLabel.bottomAnchor,
            left: leftAnchor,
            topConstant: 5,
            leftConstant: 10
        )
        
        homeTeamLabel.anchor(
            top: teamsPlayingLabel.bottomAnchor,
            left: leftAnchor,
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
            left: leftAnchor,
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
        backgroundColor = .blue
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 12
    }
}
