//
//  FavTeamCollectionViewCell.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 08/01/24.
//

import UIKit

class FavTeamCollectionViewCell: UICollectionViewCell {
 
    static let identifier: String = "FavTeamCollectionViewCell"
    
    lazy var logoTeamImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var teamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    public func setUpCell(data:TeamModel){
        logoTeamImage.image = data.image
        teamLabel.text = data.team
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FavTeamCollectionViewCell: ViewCodeType {
    func buildViewHierarchy() {
       addSubview(logoTeamImage)
       addSubview(teamLabel)
    }
    
    func setupConstraints() {
        logoTeamImage.anchor(
            top: topAnchor,
            centerX: centerXAnchor,
            topConstant: 10,
            widthConstant: 150,
            heightConstant: 150
        )
        
        teamLabel.anchor(
            top: logoTeamImage.bottomAnchor,
            centerX: logoTeamImage.centerXAnchor,
            topConstant: 15
        )
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .clear
        layer.cornerRadius = 6
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
    }
}
