//
//  CodeView.swift
//  learn-viewcode
//
//  Created by Jacqueline Alves on 25/11/19.
//  Copyright © 2019 jacquelinealves. All rights reserved.
//

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CodeView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
