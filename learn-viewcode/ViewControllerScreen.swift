//
//  ViewControllerScreen.swift
//  learn-viewcode
//
//  Created by Jacqueline Alves on 25/11/19.
//  Copyright © 2019 jacquelinealves. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        let button = UIButton(frame: CGRect.zero)
        button.backgroundColor = .red
        button.setTitle("Fetch", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // Add view
        addSubview(button)
        
        // Configure constraints
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        
        // Aditional setup
        
        
        
        backgroundColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
