//
//  ../Primitive Types/FHIRBoolean.swift
//
//  Automatically generated on 2018-04-23 12:44:01 +0000.
//  Do not modify!
//  Manual changes will be overwritten when this file is regenerated.
//


/** Primitive Type boolean

Value of "true" or "false"
*/
public struct FHIRBoolean: PrimitiveType, RegExMatchable {

    public static let regex: String = ""

    private final class Storage: Codable {
        var id: FHIRString?
        var `extension`: [Extension] = []
        var value: Bool?

        func copy() -> Storage {
            let copy = Storage()
            copy.id = id
            copy.`extension` = `extension`
            copy.value = value
            return copy
        }

        init() {

        }


        // MARK: - Codable

        public enum CodingKeys: String, CodingKey {
            case id
            case _id
            case `extension`
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decodePrimitiveIfPresent(forKeys: .id, ._id)
            self.`extension` = try container.decodeArrayIfPresent(Extension.self, forKey: .`extension`)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodePrimitiveIfPresent(self.id, forKeys: .id, ._id)
            try container.encodeArrayIfNotEmpty(self.`extension`, forKey: .`extension`)
        }

    }

    private var storage: Storage

    private var mutatingStorage: Storage {
        mutating get {
            if !isKnownUniquelyReferenced(&storage) {
                storage = storage.copy()
            }
            return storage
        }
    }

    public var id: FHIRString? {
        get {
            return storage.id
        }
        set {
            mutatingStorage.id = newValue
        }
    }

    public var `extension`: [Extension] {
        get {
            return storage.`extension`
        }
        set {
            mutatingStorage.`extension` = newValue
        }
    }

    public var value: Bool? {
        get {
            return storage.value
        }
        set {
            mutatingStorage.value = newValue
        }
    }


    // MARK: - Initializers

    public init() {
        self.storage = Storage()
    }

}


// MARK: - Codable

extension FHIRBoolean: Codable {

    public init(from decoder: Decoder) throws {
        self.storage = try Storage(from: decoder)
    }

    public func encode(to encoder: Encoder) throws {
        try self.storage.encode(to: encoder)
    }

}


// MARK: - Equatable

extension FHIRBoolean: Equatable {

    public static func ==(lhs: FHIRBoolean, rhs: FHIRBoolean) -> Bool {
        return lhs.id == rhs.id
            && lhs.`extension` == rhs.`extension`
            && lhs.value == rhs.value
    }

}


// MARK: - Custom Reflectable

extension FHIRBoolean: CustomReflectable {

    public var customMirror: Mirror {
        var children: [Mirror.Child] = []

        guard hasIdOrExtensions else {
            return Mirror(
                FHIRBoolean.self,
                children: children,
                displayStyle: Mirror.DisplayStyle.struct,
                ancestorRepresentation: Mirror.AncestorRepresentation.suppressed)
        }

        if let value = id {
            children.append((label: "id", value: value))
        }
        if `extension`.count > 0 {
            children.append((label: "`extension`", value: `extension`))
        }
        if let value = value {
            children.append((label: "value", value: value))
        }

        return Mirror(
            FHIRBoolean.self,
            children: children,
            displayStyle: Mirror.DisplayStyle.struct,
            ancestorRepresentation: Mirror.AncestorRepresentation.suppressed)
    }

}


// MARK: - ExpressibleByBooleanLiteral

extension FHIRBoolean: ExpressibleByBooleanLiteral {

    public init(booleanLiteral: Bool) {
        self.init()
        self.value = booleanLiteral
    }

}


// MARK: - CustomStringConvertible

extension FHIRBoolean: CustomStringConvertible {

    public var description: String {
        if let value = value {
            return String(describing: value)
        }
        return ""
    }

}