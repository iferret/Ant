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
    /// - Parameter cmd: Property.Command
    public convenience init(cmd: Property.Command) {
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
    /// - Parameter cls: Property.Class
    public convenience init(cls: Property.Class) {
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
    /// - Parameter action: Property.Action
    public convenience init(action: Property.Action) {
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
    /// - Parameter method: Property.Method
    public convenience init(method: Property.Method) {
        self.init(icalvalue_new_method(method.rawValue))
    }
    
    /// 构建
    /// - Parameter period: icalperiodtype
    public convenience init(period: icalperiodtype) {
        self.init(icalvalue_new_period(period))
    }
    
    /// 构建
    /// - Parameter status: Property.Status
    public convenience init(status: Property.Status) {
        self.init(icalvalue_new_status(status.rawValue))
    }
    
    /// 构建
    /// - Parameter string: String
    public convenience init(string: String) {
        self.init(icalvalue_new_string(string))
    }
    
    /// 构建
    /// - Parameter transp: Property.Transp
    public convenience init(transp: Property.Transp) {
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
    /// - Parameter busyType: Property.BusyType
    public convenience init(busyType: Property.BusyType) {
        self.init(icalvalue_new_busytype(busyType.rawValue))
    }
    
    /// 构建
    /// - Parameter carlevel: Property.CarLevel
    public convenience init(carlevel: Property.CarLevel) {
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
    /// - Parameter pollMode: Property.PollMode
    public convenience init(pollMode: Property.PollMode) {
        self.init(icalvalue_new_pollmode(pollMode.rawValue))
    }
    
    /// 构建
    /// - Parameter taskMode: Property.TaskMode
    public convenience init(taskMode: Property.TaskMode) {
        self.init(icalvalue_new_taskmode(taskMode.rawValue))
    }
    
    /// 构建
    /// - Parameter utcOffset: Int32
    public convenience init(utcOffset: Int32) {
        self.init(icalvalue_new_utcoffset(utcOffset))
    }
    
    /// 构建
    /// - Parameter xlicClass: Property.xlicClass
    public convenience init(xlicClass: Property.xlicClass) {
        self.init(icalvalue_new_xlicclass(xlicClass.rawValue))
    }
    
    /// 构建
    /// - Parameter calAddress: String
    public convenience init(calAddress: String) {
        self.init(icalvalue_new_caladdress(calAddress))
    }
    
    /// 构建
    /// - Parameter queryLevel: Property.QueryLevel
    public convenience init(queryLevel: Property.QueryLevel) {
        self.init(icalvalue_new_querylevel(queryLevel.rawValue))
    }
    
    /// 构建
    /// - Parameter dateTime: Date
    public convenience init(dateTime: Date) {
        self.init(icalvalue_new_datetimedate(dateTime.hub.icaltimetype))
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
    /// - Parameter pollCompletion: Property.PollCompletion
    public convenience init(pollCompletion: Property.PollCompletion) {
        self.init(icalvalue_new_pollcompletion(pollCompletion.rawValue))
    }
}

extension Value {
    
    /// Any
    internal var rawValue: Any {
        switch kind {
//        case .ANY:
//        case .ACTION:
//        case .ATTACH:
//        case .BINARY:
//        case .BOOLEAN:
//        case .BUSYTYPE:
//        case .CALADDRESS:
//        case .CARLEVEL:
//        case .CLASS:
//        case .CMD:
//        case .DATE:
//        case .DATETIME:
//        case .DATETIMEDATE:
//        case .DATETIMEPERIOD:
//        case .DURATION:
//        case .FLOAT:
//        case .GEO:
//        case .INTEGER:
//        case .METHOD:
//        case .PERIOD:
//        case .POLLCOMPLETION:
//        case .POLLMODE:
//        case .QUERY:
//        case .QUERYLEVEL:
//        case .RECUR:
//        case .REQUESTSTATUS:
//        case .STATUS:
//        case .STRING:
//        case .TASKMODE:
//        case .TEXT:
//        case .TRANSP:
//        case .TRIGGER:
//        case .URI:
//        case .UTCOFFSET:
//        case .X:
//        case .XLICCLASS:
//        case .NO
        default: return icalvalue_as_ical_string(origin)
        }
    }
}
