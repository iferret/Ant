//
//  Component.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

public class Component: CustomStringConvertible {
    
    // MARK: 公开属性
    
    /// Wrap<icalcomponent_kind>
    public var kind: Wrap<icalcomponent_kind> { icalcomponent_isa(origin).hub.wrap() }
    /// 子组件
    public var components: [Component] { icalcomponent_get_children() }
    /// 获取属性列表
    public var properties: [Property] { icalcomponent_get_properties() }
    
    // MARK: 私有属性
    
    /// icalcomponent
    internal let origin: icalcomponent
    
    // MARK: 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalcomponent
    internal init(_ rawValue: icalcomponent) {
        self.origin = rawValue
    }
    
    /// 构建
    /// - Parameter kind: Wrap<icalcomponent_kind>
    public convenience init(kind: Wrap<icalcomponent_kind>) {
        self.init(icalcomponent_new(kind.rawValue))
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) throws {
        guard let newValue = icalcomponent_new_from_string(rfc5545) else {
            throw icalerror.illegal(rfc5545)
        }
        self.init(newValue)
    }
    
    /// 构建
    /// - Parameter other: Component
    public convenience init(other: Component) {
        self.init(icalcomponent_new_clone(other.origin))
    }
    
    /// 析构函数
    deinit {
        if icalcomponent_is_valid(origin) > 0 {
            icalcomponent_free(origin)
        }
    }
    
}

extension Component {
    
    /// icalcomponent_add_component
    /// - Parameter component: Component
    public func add(_ component: Component) {
        icalcomponent_add_component(origin, component.origin)
    }
    
    /// icalcomponent_remove_component
    /// - Parameter component: Component
    public func remove(_ component: Component) {
        icalcomponent_remove_component(origin, component.origin)
    }
    
    /// icalcomponent_add_property
    /// - Parameter property: Property
    public func add(_ property: Property) {
        icalcomponent_add_property(origin, property.origin)
    }
    
    /// icalcomponent_remove_property
    /// - Parameter property: Property
    public func remove(_ property: Property) {
        icalcomponent_remove_property(origin, property.origin)
    }
    
    /// icalFormat
    /// - Returns: String
    public func icalFormat() -> String {
        if let value = icalcomponent_as_ical_string(origin) {
            return .init(cString: value)
        } else {
            return ""
        }
    }
    
    /// String
    public var description: String {
        return icalFormat()
    }
    
}

extension Component {
    
    /// icalcomponent_get_children
    /// - Returns: [Component]
    private func icalcomponent_get_children() -> [Component] {
        return Wrap<icalcomponent_kind>.allCases.reduce([], { $0 + icalcomponent_get_array_component(from: origin, kind: $1.rawValue).compactMap { rawValue in
            switch icalcomponent_isa(rawValue).hub.wrap() {
            case .NO:               return Component.init(rawValue)
            case .ANY:              return Component.init(rawValue)
            case .XROOT:            return XRoot.init(rawValue)
            case .XATTACH:          return XAttachment.init(rawValue)
            case .VEVENT:           return VEvent.init(rawValue)
            case .VTODO:            return VTodo.init(rawValue)
            case .VJOURNAL:         return VJournal.init(rawValue)
            case .VCALENDAR:        return VCalendar.init(rawValue)
            case .VAGENDA:          return VAgenda.init(rawValue)
            case .VFREEBUSY:        return VFreeBusy.init(rawValue)
            case .VALARM:           return VAlarm.init(rawValue)
            case .XAUDIOALARM:      return XAudioAlarm.init(rawValue)
            case .XDISPLAYALARM:    return XDisplayAlarm.init(rawValue)
            case .XEMAILALARM:      return XEmailAlarm.init(rawValue)
            case .XPROCEDUREALARM:  return XProcedureAlarm.init(rawValue)
            case .VTIMEZONE:        return VTimeZone.init(rawValue)
            case .XSTANDARD:        return XStandard.init(rawValue)
            case .XDAYLIGHT:        return XDaylight.init(rawValue)
            case .X:                return Component.init(rawValue)
            case .VSCHEDULE:        return VSchedule.init(rawValue)
            case .VQUERY:           return VQuery.init(rawValue)
            case .VREPLY:           return VReply.init(rawValue)
            case .VCAR:             return VCar.init(rawValue)
            case .VCOMMAND:         return VCommand.init(rawValue)
            case .XLICINVALID:      return XLicInvalid.init(rawValue)
            case .XLICMIMEPART:     return XLicMimePart.init(rawValue)
            case .VAVAILABILITY:    return VAvailability.init(rawValue)
            case .XAVAILABLE:       return XAvailable.init(rawValue)
            case .VPOLL:            return VPoll.init(rawValue)
            case .VVOTER:           return Voter.init(rawValue)
            case .XVOTE:            return XVote.init(rawValue)
            case .VPATCH:           return VPatch.init(rawValue)
            case .XPATCH:           return XPatch.init(rawValue)
            default:                return nil
            }
        }})
    }
    
    /// icalcomponent_get_properties
    /// - Returns: [Property]
    private func icalcomponent_get_properties() -> [Property] {
        return Wrap<icalproperty_kind>.allCases.reduce([], { $0 + icalcomponent_get_array_property(from: origin, kind: $1.rawValue).map { Property($0) } })
    }
}
