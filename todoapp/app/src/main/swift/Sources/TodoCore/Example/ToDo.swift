//
// Created by Andrew on 2/4/18.
//

import Foundation

// TODO: Remove it when JavaCoder 2.0 will be ready
import java_swift
import JavaCoder

/*
//let AndroidPackage = "com/example/android/architecture/blueprints/todoapp/data"

public extension Array {

    // Decoding SwiftValue type with JavaCoder
    static func from<T>(javaObject: jobject) throws -> Array<T> where T: Decodable {
        // ignore forPackage for basic impl
        return try JavaDecoder(forPackage: AndroidPackage, missingFieldsStrategy: .ignore).decode(Array<T>.self, from: javaObject)
    }

}

public extension Array where Element: Encodable {

    // Encoding SwiftValue type with JavaCoder
    func javaObject() throws -> jobject {
        // ignore forPackage for basic impl
        return try JavaEncoder(forPackage: AndroidPackage, missingFieldsStrategy: .ignore).encode(self)
    }

}
// TODO: Remove it when JavaCoder 2.0 will be ready
*/


public struct ToDo: Codable {

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

    public func hasTitle() -> Bool {
        return title == nil
    }

    public func titleDescription() -> String {
        if let title = title, let description = description {
            return title + " - " + description
        }
        return "No TitleDescription"
    }
}