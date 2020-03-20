//
//  Element.swift
//
//  Automatically generated on 2018-04-23 12:44:01 +0000.
//  Do not modify!
//  Manual changes will be overwritten when this file is regenerated.
//


/** Base for all elements

Base definition for all elements in a resource.

**See also:** [FHIR Resource Documentation](http://hl7.org/fhir/StructureDefinition/Element)
*/
public protocol Element {

    var id: FHIRString? { get set }
    var `extension`: [Extension] { get set }

}