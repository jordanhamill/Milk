# <img src="milk.png" width="48"> Milk

Milk for your Swift serialization - A common set of simple interfaces and operators for implementing serialization in Swift.

The interfaces provided by Milk allow you to serialize both `class` and `struct` types. Properties can be both immutable (`let`) and mutable (`var`) without having to use implicit unwraping `!`.

*Note: Milk requires Swift 2.0 as it uses protocol extensions to provide default implementations of common methods.*

### Example

```swift

struct Person {
    let name: String
    let age: Int
    let weight: Float

    init(age: Int, name: String, height: weight) {
        self.age = age
        self.name = name
        self.weight = weight
    }
}

extension Person: Serializable {
    private init?(name: String?, age: Int?, weight: Float?) {
        if let name = name, age = age, weight = weight {
            self.age = age
            self.name = name
            self.weight = weight
        } else {
            return nil
        }
    }

    func serialize(serializer: Serializer) {
        serializer["age"] <- age
        serializer["name"] <- name
        serializer["weight"] <- weight
    }

    static func deserialize(deserializer: Serializer) -> Patient? {
        return Person(name:   <-deserializer["name"],
                      age:    <-deserializer["age"],
                      weight: <-deserializer["weight"])
    }
}
```

```swift
let jsonSerializer: Serializer = JSONSerializer()
let person: Person = Person(name: "Matt", age: 12, weight: 71.2)
person.serialize(jsonSerializer)

if let data = try jsonSerializer.toData() {
    ...
}
```

## Usage

Milk comes with a JSON serializer `SwiftyJSONMilk` which uses [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) under the hood. This can be used as is or as a reference implementation for other serializers.

## Operators

As you may have noticed in the above example, Milk provides several prefix and infix operators for convenience. These provide a less verbose way of using a `Serializer`.

Rather than typing out

```swift
serializer.serializeOptional(myOptionalInt, forKeyPath: "age")
```

You can use
```swift
serializer["age"] <- myOptionalInt
```
 Neat, eh?

And for deserialization:
```swift
let age: Int? = deserializer.deserializeForKeyPath()
//vs
let age: Int? = <-deserializer["age"]
```

This works really well for optional constructors:

```swift
extension Person: Serializable {
    enum SerializationError: ErrorType {
        case MissingData
    }

    private init?(name: String?, age: Int?, weight: Float?) {
        if let name = name, age = age, weight = weight {
            self.age = age
            self.name = name
            self.weight = weight
        } else {
            return nil
        }
    }

    static func deserialize(deserializer: Serializer) -> Patient? {
        return Person(name:   <-deserializer["name"],
                      age:    <-deserializer["age"],
                      weight: <-deserializer["weight"])
    }
}
```

## Implementing `Serializable`

Any `class` or `struct` that conforms to `Serializable` will be serializable by a `Serializer`.

You can also nest `Serializable` objects.

## Creating your own `Serializer`

The `Serializer` protocol requires you to implement the methods to serialize and deserialize the fundamental base types, `Int`s, `Float`, `Double`, `String`, `Bool`.

```swift

// MARK: Serialization

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

```

You must also provide implementations to work with any type `T` that conforms to `Serializable`.

```swift

func serialize<T: Serializable>(value: T)
func serialize<T: Serializable>(value: T, forKeyPath keyPath: String)

func deserialize<T: Serializable>() -> T?
func deserializeForKeyPath<T: Serializable>(keyPath: String) -> T?

```

As well as providing methods to work with homogenous collections of the above types.

```swift
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
```
