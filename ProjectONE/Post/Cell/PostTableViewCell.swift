//
//  PostTableViewCell.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 23/12/23.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    static let identifier: String = "PostTableViewCell"

    lazy var customTableView: CustomPostCard = {
        let custom = CustomPostCard()
        custom.translatesAutoresizingMaskIntoConstraints = false
        return custom
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension PostTableViewCell: ViewCodeType {
    func buildViewHierarchy() {
        addSubview(customTableView)
    }
    
    func setupConstraints() {
        customTableView.anchor(
            top: topAnchor,
            left: leftAnchor,
            bottom: bottomAnchor,
            right: rightAnchor,
            topConstant: 10,
            leftConstant: 20,
            bottomConstant: 10,
            rightConstant: 20,
            heightConstant: 80
        )
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .clear
    }
}
