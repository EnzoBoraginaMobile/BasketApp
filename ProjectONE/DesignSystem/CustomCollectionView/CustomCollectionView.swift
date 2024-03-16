//
//  CustomCollectionView.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 08/01/24.
//

import Foundation
import UIKit

class CustomCollectionView: UIView {

    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setupTableViewProtocols(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        self.collectionView.delegate = delegate
        self.collectionView.dataSource = dataSource
        self.collectionView.reloadData()
    }
}

extension CustomCollectionView: ViewCodeType{
    func buildViewHierarchy() {
        addSubview(collectionView)
    }

    func setupConstraints() {
        collectionView.anchor(
            top: topAnchor,
            left: leftAnchor,
            bottom: bottomAnchor,
            right: rightAnchor
        )
    }

    func setupAdditionalConfiguration() {
    }
}
