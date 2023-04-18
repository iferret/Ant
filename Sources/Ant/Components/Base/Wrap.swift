//
//  Wrap.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

/// Wrap
public struct Wrap<T>: Hashable where T: RawRepresentable<UInt32> {
    public let rawValue: T
    
    /// 构建
    /// - Parameter rawValue: T
    public init(_ rawValue: T) {
        self.rawValue = rawValue
    }
    
    /// 构建
    /// - Parameter value: UInt32
    public init?(uInt32 value: UInt32) {
        guard let rawValue: T = .init(rawValue: value) else { return nil }
        self.init(rawValue)
    }
    
    /// 构建
    /// - Parameter hasher: Hasher
    public func hash(into hasher: inout Hasher) {
        hasher.combine(rawValue.rawValue)
    }
    
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

// MARK: - icalcomponent
extension icalcomponent_kind: CompatbileValue {}
extension CompatbileWrapper where Base == icalcomponent_kind {
    /// wrap
    /// - Returns: Wrap<icalcomponent_kind>
    internal func wrap() -> Wrap<icalcomponent_kind> {
        return .init(base)
    }
}

// MARK: - icalproperty
extension icalproperty_cmd: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_cmd {
    /// wrap
    /// - Returns: Wrap<icalproperty_cmd>
    internal func wrap() -> Wrap<icalproperty_cmd> {
        return .init(base)
    }
}

extension icalproperty_kind: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_kind {
    /// wrap
    /// - Returns: Wrap<icalproperty_kind>
    internal func wrap() -> Wrap<icalproperty_kind> {
        return .init(base)
    }
}

extension icalproperty_class: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_class {
    /// wrap
    /// - Returns: Wrap<icalproperty_class>
    internal func wrap() -> Wrap<icalproperty_class> {
        return .init(base)
    }
}

extension icalproperty_action: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_action {
    /// wrap
    /// - Returns: Wrap<icalproperty_action>
    internal func wrap() -> Wrap<icalproperty_action> {
        return .init(base)
    }
}

extension icalproperty_method: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_method {
    /// wrap
    /// - Returns: Wrap<icalproperty_method>
    internal func wrap() -> Wrap<icalproperty_method> {
        return .init(base)
    }
}

extension icalproperty_status: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_status {
    /// wrap
    /// - Returns: Wrap<icalproperty_status>
    internal func wrap() -> Wrap<icalproperty_status> {
        return .init(base)
    }
}

extension icalproperty_transp: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_transp {
    /// wrap
    /// - Returns: Wrap<icalproperty_transp>
    internal func wrap() -> Wrap<icalproperty_transp> {
        return .init(base)
    }
}

extension icalproperty_busytype: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_busytype {
    /// wrap
    /// - Returns: Wrap<icalproperty_busytype>
    internal func wrap() -> Wrap<icalproperty_busytype> {
        return .init(base)
    }
}

extension icalproperty_carlevel: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_carlevel {
    /// wrap
    /// - Returns: Wrap<icalproperty_carlevel>
    internal func wrap() -> Wrap<icalproperty_carlevel> {
        return .init(base)
    }
}

extension icalproperty_pollmode: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_pollmode {
    /// wrap
    /// - Returns: Wrap<icalproperty_pollmode>
    internal func wrap() -> Wrap<icalproperty_pollmode> {
        return .init(base)
    }
}

extension icalproperty_taskmode: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_taskmode {
    /// wrap
    /// - Returns: Wrap<icalproperty_taskmode>
    internal func wrap() -> Wrap<icalproperty_taskmode> {
        return .init(base)
    }
}

extension icalproperty_xlicclass: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_xlicclass {
    /// wrap
    /// - Returns: Wrap<icalproperty_xlicclass>
    internal func wrap() -> Wrap<icalproperty_xlicclass> {
        return .init(base)
    }
}

extension icalproperty_querylevel: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_querylevel {
    /// wrap
    /// - Returns: Wrap<icalproperty_querylevel>
    internal func wrap() -> Wrap<icalproperty_querylevel> {
        return .init(base)
    }
}

extension icalproperty_pollcompletion: CompatbileValue {}
extension CompatbileWrapper where Base == icalproperty_pollcompletion {
    /// wrap
    /// - Returns: Wrap<icalproperty_pollcompletion>
    internal func wrap() -> Wrap<icalproperty_pollcompletion> {
        return .init(base)
    }
}

// MARK: - icalparameter
extension icalparameter_kind: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_kind {
    /// wrap
    /// - Returns: Wrap<icalparameter_kind>
    internal func wrap() -> Wrap<icalparameter_kind> {
        return .init(base)
    }
}

extension icalparameter_role: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_role {
    /// wrap
    /// - Returns: Wrap<icalparameter_role>
    internal func wrap() -> Wrap<icalparameter_role> {
        return .init(base)
    }
}

extension icalparameter_rsvp: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_rsvp {
    /// wrap
    /// - Returns: Wrap<icalparameter_rsvp>
    internal func wrap() -> Wrap<icalparameter_rsvp> {
        return .init(base)
    }
}

extension icalparameter_local: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_local {
    /// wrap
    /// - Returns: Wrap<icalparameter_local>
    internal func wrap() -> Wrap<icalparameter_local> {
        return .init(base)
    }
}

extension icalparameter_range: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_range {
    /// wrap
    /// - Returns: Wrap<icalparameter_range>
    internal func wrap() -> Wrap<icalparameter_range> {
        return .init(base)
    }
}

extension icalparameter_value: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_value {
    /// wrap
    /// - Returns: Wrap<icalparameter_value>
    internal func wrap() -> Wrap<icalparameter_value> {
        return .init(base)
    }
}

extension icalparameter_action: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_action {
    /// wrap
    /// - Returns: Wrap<icalparameter_action>
    internal func wrap() -> Wrap<icalparameter_action> {
        return .init(base)
    }
}

extension icalparameter_cutype: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_cutype {
    /// wrap
    /// - Returns: Wrap<icalparameter_cutype>
    internal func wrap() -> Wrap<icalparameter_cutype> {
        return .init(base)
    }
}

extension icalparameter_enable: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_enable {
    /// wrap
    /// - Returns: Wrap<icalparameter_enable>
    internal func wrap() -> Wrap<icalparameter_enable> {
        return .init(base)
    }
}

extension icalparameter_fbtype: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_fbtype {
    /// wrap
    /// - Returns: Wrap<icalparameter_fbtype>
    internal func wrap() -> Wrap<icalparameter_fbtype> {
        return .init(base)
    }
}

extension icalparameter_display: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_display {
    /// wrap
    /// - Returns: Wrap<icalparameter_display>
    internal func wrap() -> Wrap<icalparameter_display> {
        return .init(base)
    }
}

extension icalparameter_feature: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_feature {
    /// wrap
    /// - Returns: Wrap<icalparameter_feature>
    internal func wrap() -> Wrap<icalparameter_feature> {
        return .init(base)
    }
}

extension icalparameter_related: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_related {
    /// wrap
    /// - Returns: Wrap<icalparameter_related>
    internal func wrap() -> Wrap<icalparameter_related> {
        return .init(base)
    }
}

extension icalparameter_reltype: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_reltype {
    /// wrap
    /// - Returns: Wrap<icalparameter_reltype>
    internal func wrap() -> Wrap<icalparameter_reltype> {
        return .init(base)
    }
}

extension icalparameter_encoding: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_encoding {
    /// wrap
    /// - Returns: Wrap<icalparameter_encoding>
    internal func wrap() -> Wrap<icalparameter_encoding> {
        return .init(base)
    }
}

extension icalparameter_partstat: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_partstat {
    /// wrap
    /// - Returns: Wrap<icalparameter_partstat>
    internal func wrap() -> Wrap<icalparameter_partstat> {
        return .init(base)
    }
}

extension icalparameter_required: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_required {
    /// wrap
    /// - Returns: Wrap<icalparameter_required>
    internal func wrap() -> Wrap<icalparameter_required> {
        return .init(base)
    }
}

extension icalparameter_substate: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_substate {
    /// wrap
    /// - Returns: Wrap<icalparameter_substate>
    internal func wrap() -> Wrap<icalparameter_substate> {
        return .init(base)
    }
}

extension icalparameter_patchaction: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_patchaction {
    /// wrap
    /// - Returns: Wrap<icalparameter_patchaction>
    internal func wrap() -> Wrap<icalparameter_patchaction> {
        return .init(base)
    }
}

extension icalparameter_stayinformed: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_stayinformed {
    /// wrap
    /// - Returns: Wrap<icalparameter_stayinformed>
    internal func wrap() -> Wrap<icalparameter_stayinformed> {
        return .init(base)
    }
}

extension icalparameter_scheduleagent: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_scheduleagent {
    /// wrap
    /// - Returns: Wrap<icalparameter_scheduleagent>
    internal func wrap() -> Wrap<icalparameter_scheduleagent> {
        return .init(base)
    }
}

extension icalparameter_xlicerrortype: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_xlicerrortype {
    /// wrap
    /// - Returns: Wrap<icalparameter_xlicerrortype>
    internal func wrap() -> Wrap<icalparameter_xlicerrortype> {
        return .init(base)
    }
}

extension icalparameter_xliccomparetype: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_xliccomparetype {
    /// wrap
    /// - Returns: Wrap<icalparameter_xliccomparetype>
    internal func wrap() -> Wrap<icalparameter_xliccomparetype> {
        return .init(base)
    }
}

extension icalparameter_scheduleforcesend: CompatbileValue {}
extension CompatbileWrapper where Base == icalparameter_scheduleforcesend {
    /// wrap
    /// - Returns: Wrap<icalparameter_scheduleforcesend>
    internal func wrap() -> Wrap<icalparameter_scheduleforcesend> {
        return .init(base)
    }
}

// MARK: - icalvalue
extension icalvalue_kind: CompatbileValue {}
extension CompatbileWrapper where Base == icalvalue_kind {
    /// wrap
    /// - Returns: Wrap<icalvalue_kind>
    internal func wrap() -> Wrap<icalvalue_kind> {
        return .init(base)
    }
}
