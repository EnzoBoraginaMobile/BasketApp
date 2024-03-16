//
//  HomeTableViewCell.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 21/12/23.
//
import UIKit

class HomeTableViewCell: UITableViewCell {
    
    static let identifier: String = "HomeTableViewCell"
    
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
        label.text = "NEWS"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = .purple
        return label
    }()
    
    lazy var newsTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    lazy var newsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
        return label
    }()
    
    lazy var newsLineLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
        return label
    }()
    
    public func setUpCell(data:NewsModel){
        newsTitleLabel.text = data.newsTitle
        newsLabel.text = data.newsContent
        newsLineLabel.text = data.newsContent2
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeTableViewCell: ViewCodeType {
    func buildViewHierarchy() {
        addSubview(containerView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(newsTitleLabel)
        containerView.addSubview(newsLabel)
        containerView.addSubview(newsLineLabel)

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
        
        newsTitleLabel.anchor(
            top: titleLabel.bottomAnchor,
            left: containerView.leftAnchor,
            topConstant: 5,
            leftConstant: 10
        )

        newsLabel.anchor(
            top: newsTitleLabel.bottomAnchor,
            left: containerView.leftAnchor,
            topConstant: 2,
            leftConstant: 10
        )
        
        newsLineLabel.anchor(
            top: newsLabel.bottomAnchor,
            left: containerView.leftAnchor,
            topConstant: 1,
            leftConstant: 10
        )
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .clear
    }
}

