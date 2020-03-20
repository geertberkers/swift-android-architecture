//
//  KeyedDecodingContainer+Swift.swift
//  fhir-structures
//
//  Created by Onno van Zinderen Bakker on 13/12/2017.
//

import Foundation


extension KeyedDecodingContainer {

    public func decodePrimitive<T: PrimitiveType>(
        forKeys valueKey: KeyedDecodingContainer.Key,
        _ objectKey: KeyedDecodingContainer.Key) throws -> T
    where T: Decodable, T.Value: Decodable
    {
        let value: T.Value?
        do {
            value = try decode(T.Value.self, forKey: valueKey)
        } catch {
            value = nil
        }

        let object = try decodeIfPresent(T.self, forKey: objectKey)

        if var object = object {
            object.value = value
            return object
        } else {
            var result = T()
            result.value = value
            return result
        }
    }


    public func decodePrimitiveIfPresent<T: PrimitiveType>(
        forKeys valueKey: KeyedDecodingContainer.Key,
        _ objectKey: KeyedDecodingContainer.Key) throws -> T?
    where T: Decodable, T.Value: Decodable
    {
        let value = try decodeIfPresent(T.Value.self, forKey: valueKey)
        let object = try decodeIfPresent(T.self, forKey: objectKey)

        if var object = object {
            object.value = value
            return object
        } else if let value = value {
            var result = T()
            result.value = value
            return result
        }

        return nil
    }


    public func decodePrimitiveArrayIfPresent<T>(
        _ type: T.Type,
        forKeys valueKey: KeyedDecodingContainer.Key,
        _ objectKey: KeyedDecodingContainer.Key) throws -> [T]
    where T: PrimitiveType, T: Decodable, T.Value: Decodable
    {
        guard contains(valueKey) else { return [T]() }

        // Read 2 separate arrays for the values and extensions.
        let values = try decode([T.Value].self, forKey: valueKey)
        var objects = try? decode([T?].self, forKey: objectKey)
        if objects == nil {
            objects = Array<T?>.init(repeating: nil, count: values.count)
        }

        // Merge the two separate array in one array containing the
        // FHIR primitive values.
        var result: [T] = [T]()
        for (value, object) in zip(values, objects!) {
            if var element = object {
                element.value = value
                result.append(element)
            } else {
                var element = T()
                element.value = value
                result.append(element)
            }
        }

        return result
    }


    public func decodeArrayIfPresent<T>(
        _ type: T.Type,
        forKey key: KeyedDecodingContainer.Key) throws -> [T]
    where T: Decodable
    {
        if contains(key) {
            return try decode([T].self, forKey: key)
        } else {
            return [T]()
        }
    }

}
