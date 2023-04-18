//
//  Value.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical
import CoreLocation

public class Value {
    
    // MARK: 公开属性
    
    /// Wrap<icalvalue_kind>
    public var kind: Wrap<icalvalue_kind> { icalvalue_isa(origin).hub.wrap() }
    
    // MARK: 私有属性
    
    /// icalvalue
    internal let origin: icalvalue
    
    // MARK: 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalvalue
    internal init(_ rawValue: icalvalue) {
        self.origin = rawValue
    }

}

extension Value {
    
    /// icalvalue_new_action
    /// - Parameter wrap: Wrap<icalproperty_action>
    public convenience init(action wrap: Wrap<icalproperty_action>) {
        self.init(icalvalue_new_action(wrap.rawValue))
    }
    
    /// icalvalue_new_attach
    /// - Parameter value: Attachment
    public convenience init(attach value: Attachment) {
        self.init(icalvalue_new_attach(value.origin))
    }
    
    /// icalvalue_new_binary
    /// - Parameter value: String
    public convenience init(binary value: String) {
        self.init(icalvalue_new_binary(value))
    }
    
    /// icalvalue_new_boolean
    /// - Parameter value: Bool
    public convenience init(boolean value: Bool) {
        self.init(icalvalue_new_boolean(value == true ? 1 : 0))
    }
    
    /// icalvalue_new_busytype
    /// - Parameter wrap: Wrap<icalproperty_busytype>
    public convenience init(busyType wrap: Wrap<icalproperty_busytype>) {
        self.init(icalvalue_new_busytype(wrap.rawValue))
    }
    
    /// icalvalue_new_caladdress
    /// - Parameter value: String
    public convenience init(caladdress value: String) {
        self.init(icalvalue_new_caladdress(value))
    }
    
    /// icalvalue_new_carlevel
    /// - Parameter wrap: Wrap<icalproperty_carlevel>
    public convenience init(carlevel wrap: Wrap<icalproperty_carlevel>) {
        self.init(icalvalue_new_carlevel(wrap.rawValue))
    }
    
    /// icalvalue_new_class
    /// - Parameter wrap: Wrap<icalproperty_class>
    public convenience init(class wrap: Wrap<icalproperty_class>) {
        self.init(icalvalue_new_class(wrap.rawValue))
    }
    
    /// icalvalue_new_cmd
    /// - Parameter wrap: Wrap<icalproperty_cmd>
    public convenience init(cmd wrap: Wrap<icalproperty_cmd>) {
        self.init(icalvalue_new_cmd(wrap.rawValue))
    }
    
    /// icalvalue_new_date
    /// - Parameter value: Date
    public convenience init(date value: Date) {
        self.init(icalvalue_new_date(value.hub.icaltimetype))
    }
    
    /// icalvalue_new_datetime
    /// - Parameter value: Date
    public convenience init(datetime value: Date) {
        self.init(icalvalue_new_datetime(value.hub.icaltimetype))
    }
    
    /// icalvalue_new_datetimedate
    /// - Parameter value: Date
    public convenience init(datetimedate value: Date) {
        self.init(icalvalue_new_datetimedate(value.hub.icaltimetype))
    }
    
    /// icalvalue_new_datetimeperiod
    /// - Parameter value: icaldatetimeperiodtype
    public convenience init(datetimeperiod value: icaldatetimeperiodtype) {
        self.init(icalvalue_new_datetimeperiod(value))
    }
    
    /// icalvalue_new_duration
    /// - Parameter value: icaldurationtype
    public convenience init(duration value: icaldurationtype) {
        self.init(icalvalue_new_duration(value))
    }
    
    /// icalvalue_new_float
    /// - Parameter value: Float
    public convenience init(float value: Float) {
        self.init(icalvalue_new_float(value))
    }
    
    /// icalvalue_new_geo
    /// - Parameter value: CLLocationCoordinate2D
    public convenience init(geo value: CLLocationCoordinate2D) {
        self.init(icalvalue_new_geo(value.hub.icalgeotype))
    }
    
    /// icalvalue_new_integer
    /// - Parameter value: Int32
    public convenience init(integer value: Int32) {
        self.init(icalvalue_new_integer(value))
    }
    
    /// icalvalue_new_method
    /// - Parameter wrap: Wrap<icalproperty_method>
    public convenience init(method wrap: Wrap<icalproperty_method>) {
        self.init(icalvalue_new_method(wrap.rawValue))
    }
    
    /// icalvalue_new_period
    /// - Parameter value: icalperiodtype
    public convenience init(period value: icalperiodtype) {
        self.init(icalvalue_new_period(value))
    }
    
    /// icalvalue_new_pollcompletion
    /// - Parameter wrap: Wrap<icalproperty_pollcompletion>
    public convenience init(pollcompletion wrap: Wrap<icalproperty_pollcompletion>) {
        self.init(icalvalue_new_pollcompletion(wrap.rawValue))
    }
    
    /// icalvalue_new_pollmode
    /// - Parameter wrap: Wrap<icalproperty_pollmode>
    public convenience init(pollmode wrap: Wrap<icalproperty_pollmode>) {
        self.init(icalvalue_new_pollmode(wrap.rawValue))
    }
    
    /// icalvalue_new_query
    /// - Parameter value: String
    public convenience init(query value: String) {
        self.init(icalvalue_new_query(value))
    }
    
    /// icalvalue_new_querylevel
    /// - Parameter wrap: Wrap<icalproperty_querylevel>
    public convenience init(querylevel wrap: Wrap<icalproperty_querylevel>) {
        self.init(icalvalue_new_querylevel(wrap.rawValue))
    }
    
    /// icalvalue_new_recur
    /// - Parameter value: icalrecurrencetype
    public convenience init(recur value: icalrecurrencetype) {
        self.init(icalvalue_new_recur(value))
    }
    
    /// icalvalue_new_requeststatus
    /// - Parameter value: icalreqstattype
    public convenience init(requeststatus value: icalreqstattype) {
        self.init(icalvalue_new_requeststatus(value))
    }
    
    /// icalvalue_new_status
    /// - Parameter wrap: Wrap<icalproperty_status>
    public convenience init(status wrap: Wrap<icalproperty_status>) {
        self.init(icalvalue_new_status(wrap.rawValue))
    }
    
    /// icalvalue_new_string
    /// - Parameter value: String
    public convenience init(string value: String) {
        self.init(icalvalue_new_string(value))
    }
    
    /// icalvalue_new_taskmode
    /// - Parameter wrap: Wrap<icalproperty_taskmode>
    public convenience init(taskmode wrap: Wrap<icalproperty_taskmode>) {
        self.init(icalvalue_new_taskmode(wrap.rawValue))
    }
    
    /// icalvalue_new_text
    /// - Parameter value: String
    public convenience init(text value: String) {
        self.init(icalvalue_new_text(value))
    }
    
    /// icalvalue_new_transp
    /// - Parameter wrap: Wrap<icalproperty_transp>
    public convenience init(transp wrap: Wrap<icalproperty_transp>) {
        self.init(icalvalue_new_transp(wrap.rawValue))
    }
    
    /// icalvalue_new_trigger
    /// - Parameter value: icaltriggertype
    public convenience init(trigger value: icaltriggertype) {
        self.init(icalvalue_new_trigger(value))
    }
    
    /// icalvalue_new_uri
    /// - Parameter value: URL
    public convenience init(uri value: URL) {
        self.init(icalvalue_new_uri(value.absoluteString))
    }
    
    /// icalvalue_new_utcoffset
    /// - Parameter value: Int32
    public convenience init(utcoffset value: Int32) {
        self.init(icalvalue_new_utcoffset(value))
    }
    
    /// icalvalue_new_x
    /// - Parameter value: String
    public convenience init(x value: String) {
        self.init(icalvalue_new_x(value))
    }
    
    /// icalvalue_new_xlicclass
    /// - Parameter wrap: Wrap<icalproperty_xlicclass>
    public convenience init(xlicclass wrap: Wrap<icalproperty_xlicclass>) {
        self.init(icalvalue_new_xlicclass(wrap.rawValue))
    }
    
}

extension Value {
    
    /// Any?
    public var rawValue: Any? {
        switch kind {
        case .ANY:              return icalvalue_get_string(origin)?.hub.wrap()
        case .ACTION:           return icalvalue_get_action(origin).hub.wrap()
        case .ATTACH:           return Attachment.init(icalvalue_get_attach(origin))
        case .BINARY:           return icalvalue_get_binary(origin)?.hub.wrap()
        case .BOOLEAN:          return icalvalue_get_boolean(origin) > 0
        case .BUSYTYPE:         return icalvalue_get_busytype(origin).hub.wrap()
        case .CALADDRESS:       return icalvalue_get_caladdress(origin)?.hub.wrap()
        case .CARLEVEL:         return icalvalue_get_carlevel(origin).hub.wrap()
        case .CLASS:            return icalvalue_get_class(origin).hub.wrap()
        case .CMD:              return icalvalue_get_cmd(origin).hub.wrap()
        case .DATE:             return icalvalue_get_date(origin).hub.wrap()
        case .DATETIME:         return icalvalue_get_datetime(origin).hub.wrap()
        case .DATETIMEDATE:     return icalvalue_get_datetimedate(origin).hub.wrap()
        case .DATETIMEPERIOD:   return icalvalue_get_datetimeperiod(origin)
        case .DURATION:         return icalvalue_get_duration(origin)
        case .FLOAT:            return icalvalue_get_float(origin)
        case .GEO:              return icalvalue_get_geo(origin).hub.wrap()
        case .INTEGER:          return icalvalue_get_integer(origin)
        case .METHOD:           return icalvalue_get_method(origin).hub.wrap()
        case .PERIOD:           return icalvalue_get_period(origin)
        case .POLLCOMPLETION:   return icalvalue_get_pollcompletion(origin).hub.wrap()
        case .POLLMODE:         return icalvalue_get_pollmode(origin).hub.wrap()
        case .QUERY:            return icalvalue_get_query(origin)?.hub.wrap()
        case .QUERYLEVEL:       return icalvalue_get_querylevel(origin).hub.wrap()
        case .RECUR:            return icalvalue_get_recur(origin)
        case .REQUESTSTATUS:    return icalvalue_get_requeststatus(origin)
        case .STATUS:           return icalvalue_get_status(origin).hub.wrap()
        case .STRING:           return icalvalue_get_string(origin)?.hub.wrap()
        case .TASKMODE:         return icalvalue_get_taskmode(origin).hub.wrap()
        case .TEXT:             return icalvalue_get_text(origin)?.hub.wrap()
        case .TRANSP:           return icalvalue_get_transp(origin).hub.wrap()
        case .TRIGGER:          return icalvalue_get_trigger(origin)
        case .URI:              return icalvalue_get_uri(origin)?.hub.wrap().hub.toURL()
        case .UTCOFFSET:        return icalvalue_get_utcoffset(origin)
        case .X:                return icalvalue_get_x(origin)?.hub.wrap()
        case .XLICCLASS:        return icalvalue_get_xlicclass(origin).hub.wrap()
        default:                return nil
        }
    }
}
