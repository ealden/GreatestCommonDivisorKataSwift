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

    func testShouldReturnSmallerInputIfDivisibleToOtherInput() {
        XCTAssertEqual(2, gcd.calculate(4, 2))
        XCTAssertEqual(2, gcd.calculate(2, 4))
    }

    func testShouldReturn1IfInputsAreBothPrime() {
        XCTAssertEqual(1, gcd.calculate(3, 7))
        XCTAssertEqual(1, gcd.calculate(11, 13))
    }
}
