//
//  PropertyMapping.swift
//  Milk
//
//  Created by Jordan Hamill on 06/09/2015.
//  Copyright © 2015 JordanHamill. All rights reserved.
//

import Foundation

public struct PropertyMapping {
    let keyPath: String
    weak var serializer: Serializer?
}

public extension Serializer {
    public subscript(keyPath: String) -> PropertyMapping {
        get {
            return PropertyMapping(keyPath: keyPath, serializer: self)
        }
    }
}
