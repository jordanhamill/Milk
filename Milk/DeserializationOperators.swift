//
//  DeserializationOperators.swift
//  Milk
//
//  Created by Jordan Hamill on 06/09/2015.
//  Copyright © 2015 JordanHamill. All rights reserved.
//

import Foundation

prefix operator <- {}

public prefix func <-<T: Serializable> (right: PropertyMapping) -> T? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> Bool? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> Int16? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> Int32? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> Int64? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> Int? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> UInt16? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> UInt32? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> UInt64? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> UInt? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> Float? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> Double? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> String? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <-<T: Serializable> (right: PropertyMapping) -> [T]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [Bool]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [Int16]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [Int32]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [Int64]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [Int]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [UInt16]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [UInt32]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [UInt64]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [UInt]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [Float]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [Double]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}

public prefix func <- (right: PropertyMapping) -> [String]? {
    return right.serializer?.deserializeForKeyPath(right.keyPath)
}
