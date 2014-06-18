//
//  GreatestCommonDivisorKataTests.swift
//  GreatestCommonDivisorKataTests
//
//  Created by Ealden Escañan on 6/17/14.
//  Copyright (c) 2014 Ealden Escañan. All rights reserved.
//

import XCTest

class GreatestCommonDivisorKataTests: XCTestCase {
    let gcd = GreatestCommonDivisorKata()

    func testShouldReturnNumberIfInputsAreTheSame() {
        XCTAssertEqual(1, gcd.calculate(1, 1))
        XCTAssertEqual(2, gcd.calculate(2, 2))
    }

    func testShouldReturn0IfInputsAreNotTheSame() {
        XCTAssertEqual(0, gcd.calculate(1, 2))
    }
}
