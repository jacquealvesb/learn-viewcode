//
//  ViewController.swift
//  learn-viewcode
//
//  Created by Jacqueline Alves on 25/11/19.
//  Copyright © 2019 jacquelinealves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let screen = ViewControllerScreen()
    
    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

