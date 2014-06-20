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
        XCTAssertEqual(gcd.calculate(1, 1), 1)
        XCTAssertEqual(gcd.calculate(2, 2), 2)
    }

    func testShouldReturnSmallerInputIfDivisibleToOtherInput() {
        XCTAssertEqual(gcd.calculate(4, 2), 2)
        XCTAssertEqual(gcd.calculate(2, 4), 2)
    }

    func testShouldReturn1IfInputsAreBothPrime() {
        XCTAssertEqual(gcd.calculate(3, 7), 1)
        XCTAssertEqual(gcd.calculate(11, 13), 1)
    }

    func testShouldReturnGCD() {
        XCTAssertEqual(gcd.calculate(54, 24), 6)
        XCTAssertEqual(gcd.calculate(24, 54), 6)
        XCTAssertEqual(gcd.calculate(27, 90), 9)
    }

    func testShouldReturn1IfAnInputIsO() {
        XCTAssertEqual(gcd.calculate(0, 20), 1)
    }

    func testShouldReturn1IfBothInputs0() {
        XCTAssertEqual(gcd.calculate(0, 0), 1)
    }

    func testShouldReturn0IfAnInputIsNegative() {
        XCTAssertEqual(gcd.calculate(1, -1), 0)
        XCTAssertEqual(gcd.calculate(-1, 1), 0)
    }

    func testShouldReturn0IfBothInputsNegative() {
        XCTAssertEqual(gcd.calculate(-20, -35), 0)
    }
}
