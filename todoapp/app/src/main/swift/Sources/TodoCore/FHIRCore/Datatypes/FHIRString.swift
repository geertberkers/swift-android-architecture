//
//  ../Primitive Types/FHIRString.swift
//
//  Automatically generated on 2018-04-23 12:44:01 +0000.
//  Do not modify!
//  Manual changes will be overwritten when this file is regenerated.
//

import Foundation

/** Primitive Type string

A sequence of Unicode characters

Note that FHIR strings may not exceed 1MB in size
*/
public struct FHIRString: PrimitiveType, RegExMatchable {

    public static let regex: String = ""

    private final class Storage: Codable {
        var id: FHIRString?
        var `extension`: [Extension] = []
        var value: String?

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

    public static func getRandomValue() -> FHIRString {
        return FHIRString(stringLiteral: UUID().uuidString)
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

    public var value: String? {
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

extension FHIRString: Codable {

    public init(from decoder: Decoder) throws {
        self.storage = try Storage(from: decoder)
    }

    public func encode(to encoder: Encoder) throws {
        try self.storage.encode(to: encoder)
    }

}


// MARK: - Equatable

extension FHIRString: Equatable {

    public static func ==(lhs: FHIRString, rhs: FHIRString) -> Bool {
        return lhs.id == rhs.id
            && lhs.`extension` == rhs.`extension`
            && lhs.value == rhs.value
    }

}


// MARK: - Custom Reflectable

extension FHIRString: CustomReflectable {

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
            FHIRString.self,
            children: children,
            displayStyle: Mirror.DisplayStyle.struct,
            ancestorRepresentation: Mirror.AncestorRepresentation.suppressed)
    }

}


// MARK: - ExpressibleByStringLiteral

extension FHIRString: ExpressibleByStringLiteral {

    public init(stringLiteral: String) {
        self.init()
        self.value = stringLiteral
    }

}


// MARK: - CustomStringConvertible

extension FHIRString: CustomStringConvertible {

    public var description: String {
        return value ?? ""
    }

}
