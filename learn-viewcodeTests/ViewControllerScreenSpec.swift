//
//  ViewControllerScreenSpec.swift
//  learn-viewcodeTests
//
//  Created by Jacqueline Alves on 26/11/19.
//  Copyright © 2019 jacquelinealves. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots

@testable import learn_viewcode

class ViewControllerScreenSpec: QuickSpec {
    override func spec() {
        describe("the 'UI' ") {
            it("should have the expected look and feel") {
                let frame = UIScreen.main.bounds
                let view = ViewControllerScreen(frame: frame)
                
                expect(view) == recordSnapshot("ViewControllerScreen")
            }
        }
    }
}
