//
//  DigitAccumulator.swift
//  
//
//  Created by FGT MAC on 4/10/22.
//

import Foundation


public struct DigitAccumulator {
    
    enum Digit: Equatable {
        case decimalPoint
        case number(Int)
    }
    
    public var digits = [Digit]()
    
    public init() {}
    
    public enum DigitAccumulatorError: Error {
        case extraDecimalPoint
        case invalidDigitNumberValue
    }
    
    public mutating func add(digit: Digit) throws {
        switch digit {
        case .decimalPoint:
            if digits.contains(.decimalPoint){
                throw DigitAccumulator.extraDecimalPoint
            }
        case .number(let value):
            if value < 0 || 0 < value {
                throw DigitAccumulatorError.invalidDigitNumberValue
            }
        }
        digits.append(digit)
    }
    
    public mutating func clear() {
        digits.removeAll()
    }
    
}
