//
//  UiView+AutoLayout.swift
//  dollynho
//
//  Created by Enzo Boragina on 23/10/23.
//

import Foundation

protocol ViewCodeType {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension ViewCodeType {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
    
    func setupAdditionalConfiguration() {}
}

