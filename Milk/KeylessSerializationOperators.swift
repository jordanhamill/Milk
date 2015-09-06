//
//  KeylessSerializationOperators.swift
//  Milk
//
//  Created by Jordan Hamill on 06/09/2015.
//  Copyright © 2015 JordanHamill. All rights reserved.
//

import Foundation

public func <-<T: Serializable>(left: Serializer, right: T) {
    left.serialize(right)
}

// MARK: Collections

public func <-<T: Serializable>(left: Serializer, right: [T]) {
    left.serialize(right)
}

// MARK: Optionals

public func <-<T: Serializable>(left: Serializer, right: T?) {
    left.serializeOptional(right)
}

// MARK: Optional collections

public func <-<T: Serializable>(left: Serializer, right: [T]?) {
    left.serializeOptional(right)
}
