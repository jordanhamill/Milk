//
//  KeylessDeserializationOperators.swift
//  Milk
//
//  Created by Jordan Hamill on 06/09/2015.
//  Copyright © 2015 JordanHamill. All rights reserved.
//

import Foundation

public prefix func <-<T: Serializable> (right: Serializer) -> T? {
    return right.deserialize()
}

public prefix func <-<T: Serializable> (right: Serializer) -> [T]? {
    return right.deserialize()
}
