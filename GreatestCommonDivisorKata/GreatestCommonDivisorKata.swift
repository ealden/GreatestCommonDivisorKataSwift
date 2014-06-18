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
        if number1 == number2 {
            return number1
        } else if (number1 % number2) == 0 {
            return number2
        } else if (number2 % number1) == 0 {
            return number1
        } else {
            return 0
        }
    }
}