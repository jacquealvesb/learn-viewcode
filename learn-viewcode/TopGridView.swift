//
//  TopGridView.swift
//  learn-viewcode
//
//  Created by Jacqueline Alves on 26/11/19.
//  Copyright © 2019 jacquelinealves. All rights reserved.
//

import UIKit

final class TopGridView: UIView {
    
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var textContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8
        return view
    }()
    
    lazy var buttonContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8
        return view
    }()
    
    lazy var title: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var subtitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    lazy var l_button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .systemPink
        return view
    }()
    
    lazy var r_button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .cyan
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TopGridView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(imageView)
        textContainer.addArrangedSubview(title)
        textContainer.addArrangedSubview(subtitle)
        addSubview(textContainer)
        buttonContainer.addArrangedSubview(l_button)
        buttonContainer.addArrangedSubview(r_button)
        addSubview(buttonContainer)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.left.top.bottom.equalToSuperview()
            make.width.equalTo(imageView.snp.height)
        }
        
        textContainer.snp.makeConstraints { make in
            make.top.right.equalToSuperview()
            make.left.equalTo(imageView.snp.right).offset(8)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        buttonContainer.snp.makeConstraints { make in
            make.bottom.right.equalToSuperview()
            make.top.equalTo(textContainer.snp.bottom).offset(8)
            make.left.equalTo(imageView.snp.right).offset(8)
        }
    }
    
    func setupAdditionalConfiguration() {
        
    }
}

