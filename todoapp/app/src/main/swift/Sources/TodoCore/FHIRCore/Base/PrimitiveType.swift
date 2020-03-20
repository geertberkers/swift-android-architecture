//
//  PrimitiveType.swift
//  fhir-structures
//
//  Created by Onno van Zinderen Bakker on 04/12/2017.
//

import Foundation


public protocol PrimitiveType: Element {
    associatedtype Value
    var id: FHIRString? { get set }
    var `extension`: [Extension] { get set }
    var value: Value? { get set }
    init()
}


extension PrimitiveType {

    public var hasIdOrExtensions: Bool {
        return (id != nil) || (`extension`.count > 0)
    }

}


extension Swift.Sequence where Element: PrimitiveType {

    public var hasElementsWithIdOrExtensions: Bool {
        return self.contains { $0.hasIdOrExtensions }
    }

}


// MARK: - Convenience Equality Operators

public func ==<T: PrimitiveType>(lhs: T, rhs: T.Value) -> Bool
    where T.Value: Equatable
{
    return lhs.value == rhs
}


public func ==<T: PrimitiveType>(lhs: T?, rhs: T.Value) -> Bool
    where T.Value: Equatable
{
    return lhs?.value == rhs
}


public func ==<T: PrimitiveType>(lhs: T.Value, rhs: T) -> Bool
    where T.Value: Equatable
{
    return lhs == rhs.value
}


public func ==<T: PrimitiveType>(lhs: T.Value, rhs: T?) -> Bool
    where T.Value: Equatable
{
    return lhs == rhs?.value
}
