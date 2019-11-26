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
        button.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.bottom.equalToSuperview().inset(15)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
}
