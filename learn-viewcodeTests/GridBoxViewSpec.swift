//
//  GridBoxViewSpec.swift
//  learn-viewcodeTests
//
//  Created by Jacqueline Alves on 26/11/19.
//  Copyright © 2019 jacquelinealves. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots

@testable import learn_viewcode

class GridBoxViewSpec: QuickSpec {
    override func spec() {
        describe("the 'UI' ") {
            it("should have the expected look and feel") {
                let frame = CGRect(x: 0, y: 0, width: 250, height: 300)
                let view = GridBoxView(frame: frame)
                
                expect(view) == snapshot("GridBoxView")
            }
        }
    }
}
