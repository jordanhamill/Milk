//
//  Serializer.swift
//  Milk
//
//  Created by Jordan Hamill on 06/09/2015.
//  Copyright © 2015 JordanHamill. All rights reserved.
//

import Foundation

public protocol Serializer: class {

    // MARK: Serialization

    func serialize<T: Serializable>(value: T)
    func serialize<T: Serializable>(value: T, forKeyPath keyPath: String)
    func serialize(value: Bool, forKeyPath keyPath: String)
    func serialize(value: Int16, forKeyPath keyPath: String)
    func serialize(value: Int32, forKeyPath keyPath: String)
    func serialize(value: Int64, forKeyPath keyPath: String)
    func serialize(value: Int, forKeyPath keyPath: String)
    func serialize(value: UInt16, forKeyPath keyPath: String)
    func serialize(value: UInt32, forKeyPath keyPath: String)
    func serialize(value: UInt64, forKeyPath keyPath: String)
    func serialize(value: UInt, forKeyPath keyPath: String)
    func serialize(value: Float, forKeyPath keyPath: String)
    func serialize(value: Double, forKeyPath keyPath: String)
    func serialize(value: String, forKeyPath keyPath: String)

    // MARK: Deserialization

    func deserialize<T: Serializable>() -> T?
    func deserializeForKeyPath<T: Serializable>(keyPath: String) -> T?
    func deserializeForKeyPath(keyPath: String) -> Bool?
    func deserializeForKeyPath(keyPath: String) -> Int16?
    func deserializeForKeyPath(keyPath: String) -> Int32?
    func deserializeForKeyPath(keyPath: String) -> Int64?
    func deserializeForKeyPath(keyPath: String) -> Int?
    func deserializeForKeyPath(keyPath: String) -> UInt16?
    func deserializeForKeyPath(keyPath: String) -> UInt32?
    func deserializeForKeyPath(keyPath: String) -> UInt64?
    func deserializeForKeyPath(keyPath: String) -> UInt?
    func deserializeForKeyPath(keyPath: String) -> Float?
    func deserializeForKeyPath(keyPath: String) -> Double?
    func deserializeForKeyPath(keyPath: String) -> String?

    // MARK: Collections

    func serialize<T: Serializable>(values: [T])
    func serialize<T: Serializable>(values: [T], forKeyPath keyPath: String)
    func serialize(values: [Bool], forKeyPath keyPath: String)
    func serialize(values: [Int16], forKeyPath keyPath: String)
    func serialize(values: [Int32], forKeyPath keyPath: String)
    func serialize(values: [Int64], forKeyPath keyPath: String)
    func serialize(values: [Int], forKeyPath keyPath: String)
    func serialize(values: [UInt16], forKeyPath keyPath: String)
    func serialize(values: [UInt32], forKeyPath keyPath: String)
    func serialize(values: [UInt64], forKeyPath keyPath: String)
    func serialize(values: [UInt], forKeyPath keyPath: String)
    func serialize(values: [Float], forKeyPath keyPath: String)
    func serialize(values: [Double], forKeyPath keyPath: String)
    func serialize(values: [String], forKeyPath keyPath: String)

    func deserialize<T: Serializable>() -> [T]?
    func deserializeForKeyPath<T: Serializable>(keyPath: String) -> [T]?
    func deserializeForKeyPath(keyPath: String) -> [Bool]?
    func deserializeForKeyPath(keyPath: String) -> [Int16]?
    func deserializeForKeyPath(keyPath: String) -> [Int32]?
    func deserializeForKeyPath(keyPath: String) -> [Int64]?
    func deserializeForKeyPath(keyPath: String) -> [Int]?
    func deserializeForKeyPath(keyPath: String) -> [UInt16]?
    func deserializeForKeyPath(keyPath: String) -> [UInt32]?
    func deserializeForKeyPath(keyPath: String) -> [UInt64]?
    func deserializeForKeyPath(keyPath: String) -> [UInt]?
    func deserializeForKeyPath(keyPath: String) -> [Float]?
    func deserializeForKeyPath(keyPath: String) -> [Double]?
    func deserializeForKeyPath(keyPath: String) -> [String]?

    // MARK: Optionals

    func serializeOptional<T: Serializable>(value: T?)
    func serializeOptional<T: Serializable>(value: T?, forKeyPath keyPath: String)
    func serializeOptional(value: Bool?, forKeyPath keyPath: String)
    func serializeOptional(value: Int16?, forKeyPath keyPath: String)
    func serializeOptional(value: Int32?, forKeyPath keyPath: String)
    func serializeOptional(value: Int64?, forKeyPath keyPath: String)
    func serializeOptional(value: Int?, forKeyPath keyPath: String)
    func serializeOptional(value: UInt16?, forKeyPath keyPath: String)
    func serializeOptional(value: UInt32?, forKeyPath keyPath: String)
    func serializeOptional(value: UInt64?, forKeyPath keyPath: String)
    func serializeOptional(value: UInt?, forKeyPath keyPath: String)
    func serializeOptional(value: Float?, forKeyPath keyPath: String)
    func serializeOptional(value: Double?, forKeyPath keyPath: String)
    func serializeOptional(value: String?, forKeyPath keyPath: String)

    // MARK: Optional collections

    func serializeOptional<T: Serializable>(value: [T]?)
    func serializeOptional<T: Serializable>(value: [T]?, forKeyPath keyPath: String)
    func serializeOptional(value: [Bool]?, forKeyPath keyPath: String)
    func serializeOptional(value: [Int16]?, forKeyPath keyPath: String)
    func serializeOptional(value: [Int32]?, forKeyPath keyPath: String)
    func serializeOptional(value: [Int64]?, forKeyPath keyPath: String)
    func serializeOptional(value: [Int]?, forKeyPath keyPath: String)
    func serializeOptional(value: [UInt16]?, forKeyPath keyPath: String)
    func serializeOptional(value: [UInt32]?, forKeyPath keyPath: String)
    func serializeOptional(value: [UInt64]?, forKeyPath keyPath: String)
    func serializeOptional(value: [UInt]?, forKeyPath keyPath: String)
    func serializeOptional(value: [Float]?, forKeyPath keyPath: String)
    func serializeOptional(value: [Double]?, forKeyPath keyPath: String)
    func serializeOptional(value: [String]?, forKeyPath keyPath: String)

    func removeValueForKeyPath(keyPath: String)
    func removeAllValues()

    func toData() throws -> NSData?
    static func fromData(data: NSData) throws -> Self?
    
    subscript(keyPath: String) -> PropertyMapping { get }
}
