//
//  Value.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical
import CoreLocation

public class Value: NSObject {
    
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
 
    deinit {
        icalvalue_free(origin)
    }
}

extension Value {
    
    /// 构建
    /// - Parameters:
    ///   - kind: Kind
    ///   - value: String
    public convenience init(kind: Wrap<icalvalue_kind>, value: String) {
        self.init(icalvalue_new_from_string(kind.rawValue, value))
    }
    
    /// 构建
    /// - Parameter other: Value
    public convenience init(other: Value) {
        self.init(icalvalue_new_clone(other.origin))
    }
    
    /// 构建
    /// - Parameter string: String
    public convenience init(x: String) {
        self.init(icalvalue_new_x(x))
    }
    
    /// 构建
    /// - Parameter cmd: Wrap<icalproperty_cmd>
    public convenience init(cmd: Wrap<icalproperty_cmd>) {
        self.init(icalvalue_new_cmd(cmd.rawValue))
    }
    
    /// 构建
    /// - Parameter geo: CLLocationCoordinate2D
    internal convenience init(geo: CLLocationCoordinate2D) {
        self.init(icalvalue_new_geo(geo.hub.icalgeotype))
    }
    
    /// 构建
    /// - Parameter URI: URL
    public convenience init(URI: URL) {
        if let uri = URI.absoluteString.removingPercentEncoding {
            self.init(icalvalue_new_uri(uri))
        } else {
            self.init(icalvalue_new_uri(URI.absoluteString))
        }
    }
    
    /// 构建
    /// - Parameter date: Date
    public convenience init(date: Date) {
        self.init(icalvalue_new_date(date.hub.icaltimetype))
    }
    
    /// 构建
    /// - Parameter text: String
    public convenience init(text: String) {
        self.init(icalvalue_new_text(text))
    }
    
    /// 构建
    /// - Parameter cls: Wrap<icalproperty_class>
    public convenience init(cls: Wrap<icalproperty_class>) {
        self.init(icalvalue_new_class(cls.rawValue))
    }
    
    /// 构建
    /// - Parameter float: Float
    public convenience init(float: Float) {
        self.init(icalvalue_new_float(float))
    }
    
    /// 构建
    /// - Parameter query: String
    public convenience init(query: String) {
        self.init(icalvalue_new_query(query))
    }
    
    /// 构建
    /// - Parameter recur: icalrecurrencetype
    public convenience init(recur: icalrecurrencetype) {
        self.init(icalvalue_new_recur(recur))
    }
    
    /// 构建
    /// - Parameter action: Wrap<icalproperty_action>
    public convenience init(action: Wrap<icalproperty_action>) {
        self.init(icalvalue_new_action(action.rawValue))
    }
    
    /// 构建
    /// - Parameter fileURL: URL
    public convenience init(attachment fileURL: URL) {
        let attach = icalattach_new_from_url(fileURL.hub.path)
        self.init(icalvalue_new_attach(attach))
    }
    
    /// 构建
    /// - Parameter binary: UnsafePointer<CChar>
    public convenience init(binary: UnsafePointer<CChar>) {
        self.init(icalvalue_new_binary(binary))
    }
    
    /// 构建
    /// - Parameter method: Wrap<icalproperty_method>
    public convenience init(method: Wrap<icalproperty_method>) {
        self.init(icalvalue_new_method(method.rawValue))
    }
    
    /// 构建
    /// - Parameter period: icalperiodtype
    public convenience init(period: icalperiodtype) {
        self.init(icalvalue_new_period(period))
    }
    
    /// 构建
    /// - Parameter status: Wrap<icalproperty_status>
    public convenience init(status: Wrap<icalproperty_status>) {
        self.init(icalvalue_new_status(status.rawValue))
    }
    
    /// 构建
    /// - Parameter string: String
    public convenience init(string: String) {
        self.init(icalvalue_new_string(string))
    }
    
    /// 构建
    /// - Parameter transp: Wrap<icalproperty_transp>
    public convenience init(transp: Wrap<icalproperty_transp>) {
        self.init(icalvalue_new_transp(transp.rawValue))
    }
    
    /// 构建
    /// - Parameter boolean: Bool
    public convenience init(boolean: Bool) {
        self.init(icalvalue_new_boolean(boolean == true ? 1 : 0))
    }
    
    /// 构建
    /// - Parameter integer: Int32
    public convenience init(integer: Int32) {
        self.init(icalvalue_new_integer(integer))
    }
    
    /// 构建
    /// - Parameter integer: icaltriggertype
    public convenience init(trigger: icaltriggertype) {
        self.init(icalvalue_new_trigger(trigger))
    }
    
    /// 构建
    /// - Parameter busyType: Wrap<icalproperty_busytype>
    public convenience init(busyType: Wrap<icalproperty_busytype>) {
        self.init(icalvalue_new_busytype(busyType.rawValue))
    }
    
    /// 构建
    /// - Parameter carlevel: Wrap<icalproperty_carlevel>
    public convenience init(carlevel: Wrap<icalproperty_carlevel>) {
        self.init(icalvalue_new_carlevel(carlevel.rawValue))
    }
    
    /// 构建
    /// - Parameter datetime: Date
    public convenience init(datetime: Date) {
        self.init(icalvalue_new_datetime(datetime.hub.icaltimetype))
    }
    
    /// 构建
    /// - Parameter duration: Int32
    public convenience init(duration seconds: Int32) {
        self.init(icalvalue_new_duration(icaldurationtype_from_int(seconds)))
    }
    
    /// 构建
    /// - Parameter pollMode: Wrap<icalproperty_pollmode>
    public convenience init(pollMode: Wrap<icalproperty_pollmode>) {
        self.init(icalvalue_new_pollmode(pollMode.rawValue))
    }
    
    /// 构建
    /// - Parameter taskMode: Wrap<icalproperty_taskmode>
    public convenience init(taskMode: Wrap<icalproperty_taskmode>) {
        self.init(icalvalue_new_taskmode(taskMode.rawValue))
    }
    
    /// 构建
    /// - Parameter utcOffset: Int32
    public convenience init(utcOffset: Int32) {
        self.init(icalvalue_new_utcoffset(utcOffset))
    }
    
    /// 构建
    /// - Parameter xlicClass: Wrap<icalproperty_xlicclass>
    public convenience init(xlicClass: Wrap<icalproperty_xlicclass>) {
        self.init(icalvalue_new_xlicclass(xlicClass.rawValue))
    }
    
    /// 构建
    /// - Parameter calAddress: String
    public convenience init(calAddress: String) {
        self.init(icalvalue_new_caladdress(calAddress))
    }
    
    /// 构建
    /// - Parameter querylevel: Wrap<icalproperty_querylevel>
    public convenience init(querylevel: Wrap<icalproperty_querylevel>) {
        self.init(icalvalue_new_querylevel(querylevel.rawValue))
    }
    
    /// 构建
    /// - Parameter dateTime: Date
    public convenience init(datetimedate: Date) {
        self.init(icalvalue_new_datetimedate(datetimedate.hub.icaltimetype))
    }
    
    /// 构建
    /// - Parameter requestStatus: icalreqstattype
    public convenience init(requestStatus: icalreqstattype) {
        self.init(icalvalue_new_requeststatus(requestStatus))
    }
    
    /// 构建
    /// - Parameter datetimePeriod: icaldatetimeperiodtype
    public convenience init(datetimePeriod: icaldatetimeperiodtype) {
        self.init(icalvalue_new_datetimeperiod(datetimePeriod))
    }
    
    /// 构建
    /// - Parameter pollCompletion: Wrap<icalproperty_pollcompletion>
    public convenience init(pollCompletion: Wrap<icalproperty_pollcompletion>) {
        self.init(icalvalue_new_pollcompletion(pollCompletion.rawValue))
    }
}

extension Value {

    /// Any
    public var rawValue: Any? {
        switch kind {
        case .ANY:              return icalvalue_get_string(origin).hub.wrap()
        case .ACTION:           return icalvalue_get_action(origin).hub.wrap()
        case .ATTACH:           return icalattach_get_url(icalvalue_get_attach(origin)).hub.wrap()
        case .BINARY:           return icalvalue_get_binary(origin).hub.wrap()
        case .BOOLEAN:          return icalvalue_get_boolean(origin) > 0
        case .BUSYTYPE:         return icalvalue_get_busytype(origin).hub.wrap()
        case .CALADDRESS:       return icalvalue_get_caladdress(origin).hub.wrap()
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
        case .QUERY:            return icalvalue_get_query(origin).hub.wrap()
        case .QUERYLEVEL:       return icalvalue_get_querylevel(origin).hub.wrap()
        case .RECUR:            return icalvalue_get_recur(origin)
        case .REQUESTSTATUS:    return icalvalue_get_requeststatus(origin)
        case .STATUS:           return icalvalue_get_status(origin).hub.wrap()
        case .STRING:           return icalvalue_get_string(origin).hub.wrap()
        case .TASKMODE:         return icalvalue_get_taskmode(origin).hub.wrap()
        case .TEXT:             return icalvalue_get_text(origin).hub.wrap()
        case .TRANSP:           return icalvalue_get_transp(origin).hub.wrap()
        case .TRIGGER:          return icalvalue_get_trigger(origin)
        case .URI:              return icalvalue_get_uri(origin).hub.wrap().hub.toURL()
        case .UTCOFFSET:        return icalvalue_get_utcoffset(origin)
        case .X:                return icalvalue_get_x(origin).hub.wrap()
        case .XLICCLASS:        return icalvalue_get_xlicclass(origin).hub.wrap()
        case .NO:               return nil
        default:                return icalvalue_as_ical_string(origin)
        }
    }
}
