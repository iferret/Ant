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
    public typealias Action = Property.Action
    public typealias BusyType = Property.BusyType
    public typealias CarLevel = Property.CarLevel
    public typealias Class = Property.Class
    public typealias Command = Property.Command
    public typealias Method = Property.Method
    public typealias PollCompletion = Property.PollCompletion
    public typealias PollMode = Property.PollMode
    public typealias QueryLevel = Property.QueryLevel
    public typealias Status = Property.Status
    public typealias TaskMode = Property.TaskMode
    public typealias Transp = Property.Transp
    public typealias xlicClass = Property.xlicClass
    
    // MARK: 公开属性
    
    /// Kind
    public var kind: Kind { .init(icalvalue_isa(origin)) }
    
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
    public convenience init(kind: Kind, value: String) {
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
    /// - Parameter cmd: Command
    public convenience init(cmd: Command) {
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
    /// - Parameter cls: Class
    public convenience init(cls: Class) {
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
    /// - Parameter action: Action
    public convenience init(action: Action) {
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
    /// - Parameter method: Method
    public convenience init(method: Method) {
        self.init(icalvalue_new_method(method.rawValue))
    }
    
    /// 构建
    /// - Parameter period: icalperiodtype
    public convenience init(period: icalperiodtype) {
        self.init(icalvalue_new_period(period))
    }
    
    /// 构建
    /// - Parameter status: Status
    public convenience init(status: Status) {
        self.init(icalvalue_new_status(status.rawValue))
    }
    
    /// 构建
    /// - Parameter string: String
    public convenience init(string: String) {
        self.init(icalvalue_new_string(string))
    }
    
    /// 构建
    /// - Parameter transp: Transp
    public convenience init(transp: Transp) {
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
    /// - Parameter busyType: BusyType
    public convenience init(busyType: BusyType) {
        self.init(icalvalue_new_busytype(busyType.rawValue))
    }
    
    /// 构建
    /// - Parameter carlevel: CarLevel
    public convenience init(carlevel: CarLevel) {
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
    /// - Parameter pollMode: PollMode
    public convenience init(pollMode: PollMode) {
        self.init(icalvalue_new_pollmode(pollMode.rawValue))
    }
    
    /// 构建
    /// - Parameter taskMode: TaskMode
    public convenience init(taskMode: TaskMode) {
        self.init(icalvalue_new_taskmode(taskMode.rawValue))
    }
    
    /// 构建
    /// - Parameter utcOffset: Int32
    public convenience init(utcOffset: Int32) {
        self.init(icalvalue_new_utcoffset(utcOffset))
    }
    
    /// 构建
    /// - Parameter xlicClass: xlicClass
    public convenience init(xlicClass: xlicClass) {
        self.init(icalvalue_new_xlicclass(xlicClass.rawValue))
    }
    
    /// 构建
    /// - Parameter calAddress: String
    public convenience init(calAddress: String) {
        self.init(icalvalue_new_caladdress(calAddress))
    }
    
    /// 构建
    /// - Parameter queryLevel: QueryLevel
    public convenience init(queryLevel: QueryLevel) {
        self.init(icalvalue_new_querylevel(queryLevel.rawValue))
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
    /// - Parameter pollCompletion: PollCompletion
    public convenience init(pollCompletion: PollCompletion) {
        self.init(icalvalue_new_pollcompletion(pollCompletion.rawValue))
    }
}

extension Value {

    /// Any
    public var rawValue: Any? {
        switch kind {
        case .ANY:              return icalvalue_get_string(origin).hub.wrap()
        case .ACTION:           return Action(icalvalue_get_action(origin))
        case .ATTACH:           return icalattach_get_url(icalvalue_get_attach(origin)).hub.wrap()
        case .BINARY:           return icalvalue_get_binary(origin).hub.wrap()
        case .BOOLEAN:          return icalvalue_get_boolean(origin) > 0
        case .BUSYTYPE:         return BusyType(icalvalue_get_busytype(origin))
        case .CALADDRESS:       return icalvalue_get_caladdress(origin).hub.wrap()
        case .CARLEVEL:         return CarLevel(icalvalue_get_carlevel(origin))
        case .CLASS:            return Class(icalvalue_get_class(origin))
        case .CMD:              return Command(icalvalue_get_cmd(origin))
        case .DATE:             return icalvalue_get_date(origin).hub.date
        case .DATETIME:         return icalvalue_get_datetime(origin).hub.date
        case .DATETIMEDATE:     return icalvalue_get_datetimedate(origin).hub.date
        case .DATETIMEPERIOD:   return icalvalue_get_datetimeperiod(origin)
        case .DURATION:         return icalvalue_get_duration(origin)
        case .FLOAT:            return icalvalue_get_float(origin)
        case .GEO:              return icalvalue_get_geo(origin).hub.coordinate2D
        case .INTEGER:          return icalvalue_get_integer(origin)
        case .METHOD:           return Method(icalvalue_get_method(origin))
        case .PERIOD:           return icalvalue_get_period(origin)
        case .POLLCOMPLETION:   return PollCompletion(icalvalue_get_pollcompletion(origin))
        case .POLLMODE:         return PollMode(icalvalue_get_pollmode(origin))
        case .QUERY:            return icalvalue_get_query(origin).hub.wrap()
        case .QUERYLEVEL:       return QueryLevel(icalvalue_get_querylevel(origin))
        case .RECUR:            return icalvalue_get_recur(origin)
        case .REQUESTSTATUS:    return icalvalue_get_requeststatus(origin)
        case .STATUS:           return Status(icalvalue_get_status(origin))
        case .STRING:           return icalvalue_get_string(origin).hub.wrap()
        case .TASKMODE:         return TaskMode(icalvalue_get_taskmode(origin))
        case .TEXT:             return icalvalue_get_text(origin).hub.wrap()
        case .TRANSP:           return Transp(icalvalue_get_transp(origin))
        case .TRIGGER:          return icalvalue_get_trigger(origin)
        case .URI:              return icalvalue_get_uri(origin).hub.wrap().hub.toURL()
        case .UTCOFFSET:        return icalvalue_get_utcoffset(origin)
        case .X:                return icalvalue_get_x(origin).hub.wrap()
        case .XLICCLASS:        return xlicClass(icalvalue_get_xlicclass(origin))
        case .NO:               return nil
        default:                return icalvalue_as_ical_string(origin)
        }
    }
}
