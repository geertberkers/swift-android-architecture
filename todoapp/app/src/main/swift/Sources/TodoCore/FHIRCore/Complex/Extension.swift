//
//  Extension.swift
//
//  Automatically generated on 2018-04-23 12:44:01 +0000.
//  Do not modify!
//  Manual changes will be overwritten when this file is regenerated.
//




// MARK: - Protocol

public protocol ExtensionProtocol: Element {

    var url: FHIRUri { get set }
    //var value: Extension.ValueType? { get set }

}


// MARK: - Struct

/** Optional Extensions Element

Optional Extension Element - found in all resources.

**See also:** [FHIR Resource Documentation](http://hl7.org/fhir/StructureDefinition/Extension)
*/
public struct Extension: ExtensionProtocol {

    // MARK: - ValueType
 /*
    public enum ValueType: Equatable {
        case base64Binary(FHIRBase64Binary)
        case boolean(FHIRBoolean)
        case code(FHIRCode)
        case date(FHIRDate)
        case dateTime(FHIRDateTime)
        case decimal(FHIRDecimal)
        case id(FHIRId)
        case instant(FHIRInstant)
        case integer(FHIRInteger)
        case markdown(FHIRMarkdown)
        case oid(FHIROid)
        case positiveInt(FHIRPositiveInt)
        case string(FHIRString)
        case time(FHIRTime)
        case unsignedInt(FHIRUnsignedInt)
        case uri(FHIRUri)
        case address(Address)
        case age(Age)
        case annotation(Annotation)
        case attachment(Attachment)
        case codeableConcept(CodeableConcept)
        case coding(Coding)
        case contactPoint(ContactPoint)
        case count(Count)
        case distance(Distance)
        case duration(Duration)
        case humanName(HumanName)
        case identifier(Identifier)
        case money(Money)
        case period(Period)
        case quantity(Quantity)
        case range(Range)
        case ratio(Ratio)
        case reference(Reference)
        case sampledData(SampledData)
        case signature(Signature)
        case timing(Timing)
        case meta(Meta)

        public static func ==(lhs: ValueType, rhs: ValueType) -> Bool {
            switch (lhs, rhs) {
            case let (.base64Binary(lhsValue), .base64Binary(rhsValue)):
                return lhsValue == rhsValue
            case let (.boolean(lhsValue), .boolean(rhsValue)):
                return lhsValue == rhsValue
            case let (.code(lhsValue), .code(rhsValue)):
                return lhsValue == rhsValue
            case let (.date(lhsValue), .date(rhsValue)):
                return lhsValue == rhsValue
            case let (.dateTime(lhsValue), .dateTime(rhsValue)):
                return lhsValue == rhsValue
            case let (.decimal(lhsValue), .decimal(rhsValue)):
                return lhsValue == rhsValue
            case let (.id(lhsValue), .id(rhsValue)):
                return lhsValue == rhsValue
            case let (.instant(lhsValue), .instant(rhsValue)):
                return lhsValue == rhsValue
            case let (.integer(lhsValue), .integer(rhsValue)):
                return lhsValue == rhsValue
            case let (.markdown(lhsValue), .markdown(rhsValue)):
                return lhsValue == rhsValue
            case let (.oid(lhsValue), .oid(rhsValue)):
                return lhsValue == rhsValue
            case let (.positiveInt(lhsValue), .positiveInt(rhsValue)):
                return lhsValue == rhsValue
            case let (.string(lhsValue), .string(rhsValue)):
                return lhsValue == rhsValue
            case let (.time(lhsValue), .time(rhsValue)):
                return lhsValue == rhsValue
            case let (.unsignedInt(lhsValue), .unsignedInt(rhsValue)):
                return lhsValue == rhsValue
            case let (.uri(lhsValue), .uri(rhsValue)):
                return lhsValue == rhsValue
            case let (.address(lhsValue), .address(rhsValue)):
                return lhsValue == rhsValue
            case let (.age(lhsValue), .age(rhsValue)):
                return lhsValue == rhsValue
            case let (.annotation(lhsValue), .annotation(rhsValue)):
                return lhsValue == rhsValue
            case let (.attachment(lhsValue), .attachment(rhsValue)):
                return lhsValue == rhsValue
            case let (.codeableConcept(lhsValue), .codeableConcept(rhsValue)):
                return lhsValue == rhsValue
            case let (.coding(lhsValue), .coding(rhsValue)):
                return lhsValue == rhsValue
            case let (.contactPoint(lhsValue), .contactPoint(rhsValue)):
                return lhsValue == rhsValue
            case let (.count(lhsValue), .count(rhsValue)):
                return lhsValue == rhsValue
            case let (.distance(lhsValue), .distance(rhsValue)):
                return lhsValue == rhsValue
            case let (.duration(lhsValue), .duration(rhsValue)):
                return lhsValue == rhsValue
            case let (.humanName(lhsValue), .humanName(rhsValue)):
                return lhsValue == rhsValue
            case let (.identifier(lhsValue), .identifier(rhsValue)):
                return lhsValue == rhsValue
            case let (.money(lhsValue), .money(rhsValue)):
                return lhsValue == rhsValue
            case let (.period(lhsValue), .period(rhsValue)):
                return lhsValue == rhsValue
            case let (.quantity(lhsValue), .quantity(rhsValue)):
                return lhsValue == rhsValue
            case let (.range(lhsValue), .range(rhsValue)):
                return lhsValue == rhsValue
            case let (.ratio(lhsValue), .ratio(rhsValue)):
                return lhsValue == rhsValue
            case let (.reference(lhsValue), .reference(rhsValue)):
                return lhsValue == rhsValue
            case let (.sampledData(lhsValue), .sampledData(rhsValue)):
                return lhsValue == rhsValue
            case let (.signature(lhsValue), .signature(rhsValue)):
                return lhsValue == rhsValue
            case let (.timing(lhsValue), .timing(rhsValue)):
                return lhsValue == rhsValue
            case let (.meta(lhsValue), .meta(rhsValue)):
                return lhsValue == rhsValue
            default:
                return false
            }
        }

        public var base64Binary: FHIRBase64Binary? {
            guard case let .base64Binary(value) = self else { return nil }
            return value
        }


        public var boolean: FHIRBoolean? {
            guard case let .boolean(value) = self else { return nil }
            return value
        }


        public var code: FHIRCode? {
            guard case let .code(value) = self else { return nil }
            return value
        }


        public var date: FHIRDate? {
            guard case let .date(value) = self else { return nil }
            return value
        }


        public var dateTime: FHIRDateTime? {
            guard case let .dateTime(value) = self else { return nil }
            return value
        }


        public var decimal: FHIRDecimal? {
            guard case let .decimal(value) = self else { return nil }
            return value
        }


        public var id: FHIRId? {
            guard case let .id(value) = self else { return nil }
            return value
        }


        public var instant: FHIRInstant? {
            guard case let .instant(value) = self else { return nil }
            return value
        }


        public var integer: FHIRInteger? {
            guard case let .integer(value) = self else { return nil }
            return value
        }


        public var markdown: FHIRMarkdown? {
            guard case let .markdown(value) = self else { return nil }
            return value
        }


        public var oid: FHIROid? {
            guard case let .oid(value) = self else { return nil }
            return value
        }


        public var positiveInt: FHIRPositiveInt? {
            guard case let .positiveInt(value) = self else { return nil }
            return value
        }


        public var string: FHIRString? {
            guard case let .string(value) = self else { return nil }
            return value
        }


        public var time: FHIRTime? {
            guard case let .time(value) = self else { return nil }
            return value
        }


        public var unsignedInt: FHIRUnsignedInt? {
            guard case let .unsignedInt(value) = self else { return nil }
            return value
        }


        public var uri: FHIRUri? {
            guard case let .uri(value) = self else { return nil }
            return value
        }


        public var address: Address? {
            guard case let .address(value) = self else { return nil }
            return value
        }


        public var age: Age? {
            guard case let .age(value) = self else { return nil }
            return value
        }


        public var annotation: Annotation? {
            guard case let .annotation(value) = self else { return nil }
            return value
        }


        public var attachment: Attachment? {
            guard case let .attachment(value) = self else { return nil }
            return value
        }


        public var codeableConcept: CodeableConcept? {
            guard case let .codeableConcept(value) = self else { return nil }
            return value
        }


        public var coding: Coding? {
            guard case let .coding(value) = self else { return nil }
            return value
        }


        public var contactPoint: ContactPoint? {
            guard case let .contactPoint(value) = self else { return nil }
            return value
        }


        public var count: Count? {
            guard case let .count(value) = self else { return nil }
            return value
        }


        public var distance: Distance? {
            guard case let .distance(value) = self else { return nil }
            return value
        }


        public var duration: Duration? {
            guard case let .duration(value) = self else { return nil }
            return value
        }


        public var humanName: HumanName? {
            guard case let .humanName(value) = self else { return nil }
            return value
        }


        public var identifier: Identifier? {
            guard case let .identifier(value) = self else { return nil }
            return value
        }


        public var money: Money? {
            guard case let .money(value) = self else { return nil }
            return value
        }


        public var period: Period? {
            guard case let .period(value) = self else { return nil }
            return value
        }


        public var quantity: Quantity? {
            guard case let .quantity(value) = self else { return nil }
            return value
        }


        public var range: Range? {
            guard case let .range(value) = self else { return nil }
            return value
        }


        public var ratio: Ratio? {
            guard case let .ratio(value) = self else { return nil }
            return value
        }


        public var reference: Reference? {
            guard case let .reference(value) = self else { return nil }
            return value
        }


        public var sampledData: SampledData? {
            guard case let .sampledData(value) = self else { return nil }
            return value
        }


        public var signature: Signature? {
            guard case let .signature(value) = self else { return nil }
            return value
        }


        public var timing: Timing? {
            guard case let .timing(value) = self else { return nil }
            return value
        }


        public var meta: Meta? {
            guard case let .meta(value) = self else { return nil }
            return value
        }

    }
    */


    private final class Storage: Codable {
        var id: FHIRString?
        var `extension`: [Extension] = []
        var url: FHIRUri
        //var value: Extension.ValueType?

        func copy() -> Storage {
            let copy = Storage(url: url)
            copy.id = id
            copy.`extension` = `extension`
            //copy.value = value
            return copy
        }

        init(url: FHIRUri) {
            self.url = url
        }

        // MARK: - Codable

        public enum CodingKeys: String, CodingKey {
            case id
            case _id
            case `extension` = "extension"
            case url
            case _url
            case valueBase64Binary
            case _valueBase64Binary
            case valueBoolean
            case _valueBoolean
            case valueCode
            case _valueCode
            case valueDate
            case _valueDate
            case valueDateTime
            case _valueDateTime
            case valueDecimal
            case _valueDecimal
            case valueId
            case _valueId
            case valueInstant
            case _valueInstant
            case valueInteger
            case _valueInteger
            case valueMarkdown
            case _valueMarkdown
            case valueOid
            case _valueOid
            case valuePositiveInt
            case _valuePositiveInt
            case valueString
            case _valueString
            case valueTime
            case _valueTime
            case valueUnsignedInt
            case _valueUnsignedInt
            case valueUri
            case _valueUri
            case valueAddress
            case valueAge
            case valueAnnotation
            case valueAttachment
            case valueCodeableConcept
            case valueCoding
            case valueContactPoint
            case valueCount
            case valueDistance
            case valueDuration
            case valueHumanName
            case valueIdentifier
            case valueMoney
            case valuePeriod
            case valueQuantity
            case valueRange
            case valueRatio
            case valueReference
            case valueSampledData
            case valueSignature
            case valueTiming
            case valueMeta
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decodePrimitiveIfPresent(forKeys: .id, ._id)
            self.extension = try container.decodeArrayIfPresent(Extension.self, forKey: .`extension`)
            self.url = try container.decodePrimitive(forKeys: .url, ._url)

/*
            if container.contains(.valueBase64Binary) {
                let value: FHIRBase64Binary = try container.decodePrimitive(forKeys: .valueBase64Binary, ._valueBase64Binary)
                self.value = .base64Binary(value)
            } else if container.contains(.valueBoolean) {
                let value: FHIRBoolean = try container.decodePrimitive(forKeys: .valueBoolean, ._valueBoolean)
                self.value = .boolean(value)
            } else if container.contains(.valueCode) {
                let value: FHIRCode = try container.decodePrimitive(forKeys: .valueCode, ._valueCode)
                self.value = .code(value)
            } else if container.contains(.valueDate) {
                let value: FHIRDate = try container.decodePrimitive(forKeys: .valueDate, ._valueDate)
                self.value = .date(value)
            } else if container.contains(.valueDateTime) {
                let value: FHIRDateTime = try container.decodePrimitive(forKeys: .valueDateTime, ._valueDateTime)
                self.value = .dateTime(value)
            } else if container.contains(.valueDecimal) {
                let value: FHIRDecimal = try container.decodePrimitive(forKeys: .valueDecimal, ._valueDecimal)
                self.value = .decimal(value)
            } else if container.contains(.valueId) {
                let value: FHIRId = try container.decodePrimitive(forKeys: .valueId, ._valueId)
                self.value = .id(value)
            } else if container.contains(.valueInstant) {
                let value: FHIRInstant = try container.decodePrimitive(forKeys: .valueInstant, ._valueInstant)
                self.value = .instant(value)
            } else if container.contains(.valueInteger) {
                let value: FHIRInteger = try container.decodePrimitive(forKeys: .valueInteger, ._valueInteger)
                self.value = .integer(value)
            } else if container.contains(.valueMarkdown) {
                let value: FHIRMarkdown = try container.decodePrimitive(forKeys: .valueMarkdown, ._valueMarkdown)
                self.value = .markdown(value)
            } else if container.contains(.valueOid) {
                let value: FHIROid = try container.decodePrimitive(forKeys: .valueOid, ._valueOid)
                self.value = .oid(value)
            } else if container.contains(.valuePositiveInt) {
                let value: FHIRPositiveInt = try container.decodePrimitive(forKeys: .valuePositiveInt, ._valuePositiveInt)
                self.value = .positiveInt(value)
            } else if container.contains(.valueString) {
                let value: FHIRString = try container.decodePrimitive(forKeys: .valueString, ._valueString)
                self.value = .string(value)
            } else if container.contains(.valueTime) {
                let value: FHIRTime = try container.decodePrimitive(forKeys: .valueTime, ._valueTime)
                self.value = .time(value)
            } else if container.contains(.valueUnsignedInt) {
                let value: FHIRUnsignedInt = try container.decodePrimitive(forKeys: .valueUnsignedInt, ._valueUnsignedInt)
                self.value = .unsignedInt(value)
            } else if container.contains(.valueUri) {
                let value: FHIRUri = try container.decodePrimitive(forKeys: .valueUri, ._valueUri)
                self.value = .uri(value)
            } else if container.contains(.valueAddress) {
                let value: Address = try container.decode(Address.self, forKey: .valueAddress)
                self.value = .address(value)
            } else if container.contains(.valueAge) {
                let value: Age = try container.decode(Age.self, forKey: .valueAge)
                self.value = .age(value)
            } else if container.contains(.valueAnnotation) {
                let value: Annotation = try container.decode(Annotation.self, forKey: .valueAnnotation)
                self.value = .annotation(value)
            } else if container.contains(.valueAttachment) {
                let value: Attachment = try container.decode(Attachment.self, forKey: .valueAttachment)
                self.value = .attachment(value)
            } else if container.contains(.valueCodeableConcept) {
                let value: CodeableConcept = try container.decode(CodeableConcept.self, forKey: .valueCodeableConcept)
                self.value = .codeableConcept(value)
            } else if container.contains(.valueCoding) {
                let value: Coding = try container.decode(Coding.self, forKey: .valueCoding)
                self.value = .coding(value)
            } else if container.contains(.valueContactPoint) {
                let value: ContactPoint = try container.decode(ContactPoint.self, forKey: .valueContactPoint)
                self.value = .contactPoint(value)
            } else if container.contains(.valueCount) {
                let value: Count = try container.decode(Count.self, forKey: .valueCount)
                self.value = .count(value)
            } else if container.contains(.valueDistance) {
                let value: Distance = try container.decode(Distance.self, forKey: .valueDistance)
                self.value = .distance(value)
            } else if container.contains(.valueDuration) {
                let value: Duration = try container.decode(Duration.self, forKey: .valueDuration)
                self.value = .duration(value)
            } else if container.contains(.valueHumanName) {
                let value: HumanName = try container.decode(HumanName.self, forKey: .valueHumanName)
                self.value = .humanName(value)
            } else if container.contains(.valueIdentifier) {
                let value: Identifier = try container.decode(Identifier.self, forKey: .valueIdentifier)
                self.value = .identifier(value)
            } else if container.contains(.valueMoney) {
                let value: Money = try container.decode(Money.self, forKey: .valueMoney)
                self.value = .money(value)
            } else if container.contains(.valuePeriod) {
                let value: Period = try container.decode(Period.self, forKey: .valuePeriod)
                self.value = .period(value)
            } else if container.contains(.valueQuantity) {
                let value: Quantity = try container.decode(Quantity.self, forKey: .valueQuantity)
                self.value = .quantity(value)
            } else if container.contains(.valueRange) {
                let value: Range = try container.decode(Range.self, forKey: .valueRange)
                self.value = .range(value)
            } else if container.contains(.valueRatio) {
                let value: Ratio = try container.decode(Ratio.self, forKey: .valueRatio)
                self.value = .ratio(value)
            } else if container.contains(.valueReference) {
                let value: Reference = try container.decode(Reference.self, forKey: .valueReference)
                self.value = .reference(value)
            } else if container.contains(.valueSampledData) {
                let value: SampledData = try container.decode(SampledData.self, forKey: .valueSampledData)
                self.value = .sampledData(value)
            } else if container.contains(.valueSignature) {
                let value: Signature = try container.decode(Signature.self, forKey: .valueSignature)
                self.value = .signature(value)
            } else if container.contains(.valueTiming) {
                let value: Timing = try container.decode(Timing.self, forKey: .valueTiming)
                self.value = .timing(value)
            } else if container.contains(.valueMeta) {
                let value: Meta = try container.decode(Meta.self, forKey: .valueMeta)
                self.value = .meta(value)
            }
            */

        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodePrimitiveIfPresent(self.id, forKeys: .id, ._id)
            try container.encodeArrayIfNotEmpty(self.`extension`, forKey: .`extension`)
            try container.encodePrimitive(self.url, forKeys: .url, ._url)

/*
            if let value = value {
                switch value {
                case let .base64Binary(value):
                    try container.encodePrimitive(value, forKeys: .valueBase64Binary, ._valueBase64Binary)
                case let .boolean(value):
                    try container.encodePrimitive(value, forKeys: .valueBoolean, ._valueBoolean)
                case let .code(value):
                    try container.encodePrimitive(value, forKeys: .valueCode, ._valueCode)
                case let .date(value):
                    try container.encodePrimitive(value, forKeys: .valueDate, ._valueDate)
                case let .dateTime(value):
                    try container.encodePrimitive(value, forKeys: .valueDateTime, ._valueDateTime)
                case let .decimal(value):
                    try container.encodePrimitive(value, forKeys: .valueDecimal, ._valueDecimal)
                case let .id(value):
                    try container.encodePrimitive(value, forKeys: .valueId, ._valueId)
                case let .instant(value):
                    try container.encodePrimitive(value, forKeys: .valueInstant, ._valueInstant)
                case let .integer(value):
                    try container.encodePrimitive(value, forKeys: .valueInteger, ._valueInteger)
                case let .markdown(value):
                    try container.encodePrimitive(value, forKeys: .valueMarkdown, ._valueMarkdown)
                case let .oid(value):
                    try container.encodePrimitive(value, forKeys: .valueOid, ._valueOid)
                case let .positiveInt(value):
                    try container.encodePrimitive(value, forKeys: .valuePositiveInt, ._valuePositiveInt)
                case let .string(value):
                    try container.encodePrimitive(value, forKeys: .valueString, ._valueString)
                case let .time(value):
                    try container.encodePrimitive(value, forKeys: .valueTime, ._valueTime)
                case let .unsignedInt(value):
                    try container.encodePrimitive(value, forKeys: .valueUnsignedInt, ._valueUnsignedInt)
                case let .uri(value):
                    try container.encodePrimitive(value, forKeys: .valueUri, ._valueUri)
                case let .address(value):
                    try container.encode(value, forKey: .valueAddress)
                case let .age(value):
                    try container.encode(value, forKey: .valueAge)
                case let .annotation(value):
                    try container.encode(value, forKey: .valueAnnotation)
                case let .attachment(value):
                    try container.encode(value, forKey: .valueAttachment)
                case let .codeableConcept(value):
                    try container.encode(value, forKey: .valueCodeableConcept)
                case let .coding(value):
                    try container.encode(value, forKey: .valueCoding)
                case let .contactPoint(value):
                    try container.encode(value, forKey: .valueContactPoint)
                case let .count(value):
                    try container.encode(value, forKey: .valueCount)
                case let .distance(value):
                    try container.encode(value, forKey: .valueDistance)
                case let .duration(value):
                    try container.encode(value, forKey: .valueDuration)
                case let .humanName(value):
                    try container.encode(value, forKey: .valueHumanName)
                case let .identifier(value):
                    try container.encode(value, forKey: .valueIdentifier)
                case let .money(value):
                    try container.encode(value, forKey: .valueMoney)
                case let .period(value):
                    try container.encode(value, forKey: .valuePeriod)
                case let .quantity(value):
                    try container.encode(value, forKey: .valueQuantity)
                case let .range(value):
                    try container.encode(value, forKey: .valueRange)
                case let .ratio(value):
                    try container.encode(value, forKey: .valueRatio)
                case let .reference(value):
                    try container.encode(value, forKey: .valueReference)
                case let .sampledData(value):
                    try container.encode(value, forKey: .valueSampledData)
                case let .signature(value):
                    try container.encode(value, forKey: .valueSignature)
                case let .timing(value):
                    try container.encode(value, forKey: .valueTiming)
                case let .meta(value):
                    try container.encode(value, forKey: .valueMeta)
                }
            }
*/
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

    /** xml:id (or equivalent in JSON)

    unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    */
    public var id: FHIRString? {
        get {
            return storage.id
        }
        set {
            mutatingStorage.id = newValue
        }
    }

    /** Additional Content defined by implementations

    May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.

    There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
    */
    public var `extension`: [Extension] {
        get {
            return storage.`extension`
        }
        set {
            mutatingStorage.`extension` = newValue
        }
    }

    /** identifies the meaning of the extension

    Source of the definition for the extension code - a logical name or a URL.

    The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.
    */
    public var url: FHIRUri {
        get {
            return storage.url
        }
        set {
            mutatingStorage.url = newValue
        }
    }

    /** Value of extension

    Value of extension - may be a resource or one of a constrained set of the data types (see Extensibility in the spec for list).
    */
    /*
    public var value: Extension.ValueType? {
        get {
            return storage.value
        }
        set {
            mutatingStorage.value = newValue
        }
    }
    */


    // MARK: - Initializers

    public init(url: FHIRUri) {
        self.storage = Storage(url: url)
    }

}


// MARK: - Codable

extension Extension: Codable {

    public init(from decoder: Decoder) throws {
        self.storage = try Storage(from: decoder)
    }

    public func encode(to encoder: Encoder) throws {
        try self.storage.encode(to: encoder)
    }

}


// MARK: - Equatable

extension Extension: Equatable {

    public static func ==(lhs: Extension, rhs: Extension) -> Bool {
        return lhs.id == rhs.id
            && lhs.`extension` == rhs.`extension`
            && lhs.url == rhs.url
//            && lhs.value == rhs.value
    }

}


// MARK: - Custom Reflectable

extension Extension: CustomReflectable {

    public var customMirror: Mirror {
        var children: [Mirror.Child] = []

        if let value = id {
            children.append((label: "id", value: value))
        }
        if `extension`.count > 0 {
            children.append((label: "extension", value: `extension`))
        }
        children.append((label: "url", value: url))
        //if let value = value {
        //    children.append((label: "value", value: value))
        //}

        return Mirror(
            Extension.self,
            children: children,
            displayStyle: Mirror.DisplayStyle.struct,
            ancestorRepresentation: Mirror.AncestorRepresentation.suppressed)
    }

}
