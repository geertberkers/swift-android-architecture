//
//  RegExMatchable.swift
//  fhir-structures
//
//  Created by Onno van Zinderen Bakker on 17/01/2018.
//

import Foundation


public protocol RegExMatchable {
    static var regex: String { get }
}


extension RegExMatchable {

    /// Validates a string value using the static regex expression
    public func matchesRegularExpression(stringValue: String) -> Bool {
        let regex = Self.regex
        guard !regex.isEmpty else { return true }
        guard let expression = try? NSRegularExpression(pattern: regex) else {
            return false
        }

        let matches = expression.matches(
            in: stringValue,
            range: NSRange(stringValue.startIndex..., in: stringValue))
        return matches.count > 0
    }

}
