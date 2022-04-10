//
//  Stack.swift
//  
//
//  Created by FGT MAC on 4/10/22.
//

import Foundation

struct Stack<T> : ExpressibleByArrayLiteral {
    typealias ArrayLiteralElement = T
    
    private(set) var items: [T]
    
    init(arrayLiteral elements: ArrayLiteralElement...) {
        items = elements
    }
    
    mutating func push(_ value: T) {
        items.append(value)
    }
    
    mutating func pop() -> T? {
        return items.popLast()
    }
    
    func pick() -> T? {
        return items.last
    }
    
}
