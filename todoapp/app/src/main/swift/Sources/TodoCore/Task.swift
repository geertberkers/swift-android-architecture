//
// Created by Andrew on 2/4/18.
//

import Foundation

// TODO: Remove it when JavaCoder 2.0 will be ready
import java_swift
import JavaCoder

let AndroidPackage = "com/example/android/architecture/blueprints/todoapp/data"

public extension Array {

    // Decoding SwiftValue type with JavaCoder
    public static func from(javaObject: jobject) throws -> Array {
        // ignore forPackage for basic impl
        return try JavaDecoder(forPackage: AndroidPackage, missingFieldsStrategy: .ignore).decode(Array.self, from: javaObject)
    }

    // Encoding SwiftValue type with JavaCoder
    public func javaObject() throws -> jobject {
        // ignore forPackage for basic impl
        return try JavaEncoder(forPackage: AndroidPackage, missingFieldsStrategy: .ignore).encode(self)
    }

}
// TODO: Remove it when JavaCoder 2.0 will be ready



public struct Task: Codable {

    let id: String
    let title: String?
    let description: String?
    let completed: Bool

    init(id: String, title: String?, description: String?) {
        self.init(id: id, title: title, description: description, completed: false)
    }

    init(id: String, title: String?, description: String?, completed: Bool) {
        self.id = id
        self.title = title
        self.description = description
        self.completed = completed
    }

}