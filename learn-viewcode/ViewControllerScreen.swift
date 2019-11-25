//
//  ViewControllerScreen.swift
//  learn-viewcode
//
//  Created by Jacqueline Alves on 25/11/19.
//  Copyright © 2019 jacquelinealves. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    lazy var button: UIButton = {
        let view = UIButton(frame: CGRect.zero)
        
        view.backgroundColor = .red
        view.setTitle("Fetch", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        
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

extension ViewControllerScreen: CodeView {
    
    func buildViewHierarchy() {
        addSubview(button)
    }

    func setupConstraints() {
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
}
