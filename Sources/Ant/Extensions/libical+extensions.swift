//
//  libical+extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import Foundation
import libical

/// OpaquePointer
typealias icalcomponent = OpaquePointer
/// OpaquePointer
typealias icalproperty = OpaquePointer
/// OpaquePointer
typealias icalparameter = OpaquePointer
/// OpaquePointer
typealias icalvalue = OpaquePointer
/// OpaquePointer
typealias icalattach = OpaquePointer

// MARK: - Functions

/// icalcomponent_get_array_component
/// - Parameters:
///   - cmpt: icalcomponent
///   - kind: icalcomponent_kind
/// - Returns: [icalcomponent]
func icalcomponent_get_array_component(from cmpt: icalcomponent, kind: icalcomponent_kind) -> [icalcomponent] {
    var elements: [icalcomponent] = []
    if let first = icalcomponent_get_first_component(cmpt, kind) {
        elements.append(first)
    }
    while let next = icalcomponent_get_next_component(cmpt, kind) {
        if elements.contains(next) == false {
            elements.append(next)
        }
    }
    return elements
}

/// icalcomponent_get_array_property
/// - Parameters:
///   - cmpt: icalcomponent
///   - kind: icalproperty_kind
/// - Returns: [icalproperty]
func icalcomponent_get_array_property(from cmpt: icalcomponent, kind: icalproperty_kind) -> [icalproperty] {
    var elements: [icalproperty] = []
    if let first = icalcomponent_get_first_property(cmpt, kind) {
        elements.append(first)
    }
    while let next = icalcomponent_get_next_property(cmpt, kind) {
        if elements.contains(next) == false {
            elements.append(next)
        }
    }
    return elements
}

/// icalproperty_get_array_parameter
/// - Parameters:
///   - property: icalproperty
///   - kind: icalparameter_kind
/// - Returns: [icalparameter]
func icalproperty_get_array_parameter(from property: icalproperty, kind: icalparameter_kind) -> [icalparameter] {
    var elements: [icalparameter] = []
    if let first = icalproperty_get_first_parameter(property, kind) {
        elements.append(first)
    }
    while let next = icalproperty_get_next_parameter(property, kind) {
        if elements.contains(next) == false {
            elements.append(next)
        }
    }
    return elements
}
