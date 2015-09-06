//
//  Serializable.swift
//  Milk
//
//  Created by Jordan Hamill on 06/09/2015.
//  Copyright © 2015 JordanHamill. All rights reserved.
//

import Foundation

public protocol Serializable {
    func serialize(serializer: Serializer)

    static func deserialize(deserializer: Serializer) -> Self?
}
