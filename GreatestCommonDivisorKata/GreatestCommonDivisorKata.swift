//
//  GreatestCommonDivisorKata.swift
//  GreatestCommonDivisorKata
//
//  Created by Ealden Escañan on 6/17/14.
//  Copyright (c) 2014 Ealden Escañan. All rights reserved.
//

import Foundation

class GreatestCommonDivisorKata {
    func calculate(let number1: Int, let _ number2: Int) -> Int {
        if (number1 == 0) || (number2 == 0) {
            return 1
        } else if (number1 < 0) || (number2 < 0) {
            return 0
        } else if number1 == number2 {
            return number1
        } else if (number1 % number2) == 0 {
            return number2
        } else if (number2 % number1) == 0 {
            return number1
        } else {
            return number1.gcd(number2)
        }
    }
}

extension Int {
    func divisors() -> Int[] {
        var divisors: Int[] = []

        for i in 1...(self - 1) {
            for j in (i + 1)...self {
                if (i * j) == self {
                    divisors += [i, j]
                }
            }
        }

        return divisors
    }

    func gcd(let rhs: Int) -> Int {
        let divisors1 = self.divisors()
        let divisors2 = rhs.divisors()

        var gcd = 1

        for i in divisors1 {
            for j in divisors2 {
                if (i == j) && (gcd < i) {
                    gcd = i
                }
            }
        }

        return gcd
    }
}