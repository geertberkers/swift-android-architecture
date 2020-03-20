//
//  KeyedEncodingContainer+Extensions.swift
//  fhir-structures
//
//  Created by Onno van Zinderen Bakker on 13/12/2017.
//

import Foundation


extension KeyedEncodingContainer {

    public mutating func encodePrimitive<T: PrimitiveType>(
        _ primitiveValue: T,
        forKeys valueKey: KeyedEncodingContainer.Key,
        _ objectKey: KeyedEncodingContainer.Key) throws
        where T: Encodable, T.Value: Encodable
    {
        try encodeIfPresent(primitiveValue.value, forKey: valueKey)
        if primitiveValue.hasIdOrExtensions {
            try encodeIfPresent(primitiveValue, forKey: objectKey)
        }
    }


    public mutating func encodePrimitiveIfPresent<T: PrimitiveType>(
        _ primitiveValue: T?,
        forKeys valueKey: KeyedEncodingContainer.Key,
        _ objectKey: KeyedEncodingContainer.Key) throws
    where T: Encodable, T.Value: Encodable
    {
        try encodeIfPresent(primitiveValue?.value, forKey: valueKey)
        if primitiveValue?.hasIdOrExtensions == true {
            try encodeIfPresent(primitiveValue, forKey: objectKey)
        }
    }


    public mutating func encodePrimitiveArrayIfNotEmpty<T: PrimitiveType>(
        _ array: [T],
        forKeys valueKey: KeyedEncodingContainer.Key,
        _ objectKey: KeyedEncodingContainer.Key) throws
    where T: Encodable, T.Value: Encodable
    {
        guard array.count > 0 else { return }

        // Write the values
        let valuesArray: [T.Value?] = array.map { $0.value }
        try encodeIfPresent(valuesArray, forKey: valueKey)


        // Write any objects that have an id or extensions
        if array.hasElementsWithIdOrExtensions {
            let objectsArray: [T?] = array.map {
                $0.hasIdOrExtensions ? $0 : nil
            }
            try encodeIfPresent(objectsArray, forKey: objectKey)
        }
    }


    public mutating func encodeArrayIfNotEmpty<T>(
        _ array: [T],
        forKey key: KeyedEncodingContainer.Key) throws
    where T: Encodable
    {
        if array.count > 0 {
            try encodeIfPresent(array, forKey: key)
        }
    }

}
