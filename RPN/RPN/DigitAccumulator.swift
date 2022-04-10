//
//  DigitAccumulator.swift
//  
//
//  Created by FGT MAC on 4/10/22.
//

import Foundation


public struct DigitAccumulator {
    
    public enum Digit: Equatable {
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
                throw DigitAccumulatorError.extraDecimalPoint
            }
        case .number(let value):
            if value < 0 || 9 < value {
                throw DigitAccumulatorError.invalidDigitNumberValue
            }
        }
        digits.append(digit)
    }
    
    public mutating func clear() {
        digits.removeAll()
    }
    
    public func value() -> Double? {
        let stringNum = digits.map { (digit) -> String in
            switch digit {
            case .decimalPoint:
                return "."
            case .number(let value):
                return String(value)
            }
        }.joined()
        
        return Double(stringNum)
    }
    
}
