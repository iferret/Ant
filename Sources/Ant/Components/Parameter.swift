//
//  Parameter.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

public class Parameter: NSObject {
    
    // MARK: 公开属性
    
    /// Wrap<icalparameter_kind>
    public var kind: Wrap<icalparameter_kind> { icalparameter_isa(origin).hub.wrap() }
    
    // MARK: 私有属性
    
    /// icalparameter
    internal let origin: icalparameter
    
    // MARK: 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalparameter
    internal init(_ rawValue: icalparameter) {
        self.origin = rawValue
    }
    
    /// 构建
    /// - Parameter kind: Wrap<icalparameter_kind>
    public convenience init(kind: Wrap<icalparameter_kind>) {
        self.init(icalparameter_new(kind.rawValue))
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) throws {
        guard let newValue = icalparameter_new_from_string(rfc5545) else {
            throw icalerror.illegal(rfc5545)
        }
        self.init(newValue)
    }
    
    /// 构建
    /// - Parameter other: Parameter
    public convenience init(other: Parameter) {
        self.init(icalparameter_new_clone(other.origin))
    }
    
    /// 析构函数
    deinit {
        icalparameter_free(origin)
    }
}

extension Parameter {
    
    /// String
    public var x: String {
        get { icalparameter_get_x(origin).hub.wrap() }
        set { icalparameter_set_x(origin, newValue) }
    }
    
    /// String
    public var cn: String {
        get { icalparameter_get_cn(origin).hub.wrap() }
        set { icalparameter_set_cn(origin, newValue) }
    }
    
    /// String
    public var id: String {
        get { icalparameter_get_id(origin).hub.wrap() }
        set { icalparameter_set_id(origin, newValue) }
    }
    
    /// String
    public var dir: String {
        get { icalparameter_get_dir(origin).hub.wrap() }
        set { icalparameter_set_dir(origin, newValue) }
    }
    
    /// String
    public var iana: String {
        get { icalparameter_get_iana(origin).hub.wrap() }
        set { icalparameter_set_iana(origin, newValue) }
    }
    
    /// Wrap<icalparameter_role>
    public var role: Wrap<icalparameter_role> {
        get { icalparameter_get_role(origin).hub.wrap() }
        set { icalparameter_set_role(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_rsvp>
    public var rsvp: Wrap<icalparameter_rsvp> {
        get { icalparameter_get_rsvp(origin).hub.wrap() }
        set { icalparameter_set_rsvp(origin, newValue.rawValue) }
    }
    
    /// String
    public var size: String {
        get { icalparameter_get_size(origin).hub.wrap() }
        set { icalparameter_set_size(origin, newValue) }
    }
    
    /// tzid
    public var tzid: String {
        get { icalparameter_get_tzid(origin).hub.wrap() }
        set { icalparameter_set_tzid(origin, newValue) }
    }
    
    /// String
    public var email: String {
        get { icalparameter_get_email(origin).hub.wrap() }
        set { icalparameter_set_email(origin, newValue) }
    }
    
    /// String
    public var label: String {
        get { icalparameter_get_label(origin).hub.wrap() }
        set { icalparameter_set_label(origin, newValue) }
    }
    
    /// Wrap<icalparameter_local>
    public var local: Wrap<icalparameter_local> {
        get { icalparameter_get_local(origin).hub.wrap() }
        set { icalparameter_set_local(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_range>
    public var range: Wrap<icalparameter_range> {
        get { icalparameter_get_range(origin).hub.wrap() }
        set { icalparameter_set_range(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_value>
    public var value: Wrap<icalparameter_value> {
        get { icalparameter_get_value(origin).hub.wrap() }
        set { icalparameter_set_value(origin, newValue.rawValue) }
    }
    
    /// String
    public var xname: String {
        get { icalparameter_get_xname(origin).hub.wrap() }
        set { icalparameter_set_xname(origin, newValue) }
    }
    
    /// String
    public var xvalue: String {
        get { icalparameter_get_xvalue(origin).hub.wrap() }
        set { icalparameter_set_xvalue(origin, newValue) }
    }
    
    /// String
    public var altrep: String {
        get { icalparameter_get_altrep(origin).hub.wrap() }
        set { icalparameter_set_altrep(origin, newValue) }
    }
    
    /// Wrap<icalparameter_cutype>
    public var cutype: Wrap<icalparameter_cutype> {
        get { icalparameter_get_cutype(origin).hub.wrap() }
        set { icalparameter_set_cutype(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_enable>
    public var enable: Wrap<icalparameter_enable> {
        get { icalparameter_get_enable(origin).hub.wrap() }
        set { icalparameter_set_enable(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_fbtype>
    public var fbtype: Wrap<icalparameter_fbtype> {
        get { icalparameter_get_fbtype(origin).hub.wrap() }
        set { icalparameter_set_fbtype(origin, newValue.rawValue) }
    }
    
    /// String
    public var member: String {
        get { icalparameter_get_member(origin).hub.wrap() }
        set { icalparameter_set_member(origin, newValue) }
    }
    
    /// String
    public var reason: String {
        get { icalparameter_get_reason(origin).hub.wrap() }
        set { icalparameter_set_reason(origin, newValue) }
    }
    
    /// String
    public var sentby: String {
        get { icalparameter_get_sentby(origin).hub.wrap() }
        set { icalparameter_set_sentby(origin, newValue) }
    }
    
    /// String
    public var charset: String {
        get { icalparameter_get_charset(origin).hub.wrap() }
        set { icalparameter_set_charset(origin, newValue) }
    }
    
    /// Wrap<icalparameter_display>
    public var display: Wrap<icalparameter_display> {
        get { icalparameter_get_display(origin).hub.wrap() }
        set { icalparameter_set_display(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_feature>
    public var feature: Wrap<icalparameter_feature> {
        get { icalparameter_get_feature(origin).hub.wrap() }
        set { icalparameter_set_feature(origin, newValue.rawValue) }
    }
    
    /// String
    public var fmttype: String {
        get { icalparameter_get_fmttype(origin).hub.wrap() }
        set { icalparameter_set_fmttype(origin, newValue) }
    }
    
    /// String
    public var latency: String {
        get { icalparameter_get_latency(origin).hub.wrap() }
        set { icalparameter_set_latency(origin, newValue) }
    }
    
    /// String
    public var options: String {
        get { icalparameter_get_options(origin).hub.wrap() }
        set { icalparameter_set_options(origin, newValue) }
    }
    
    /// Wrap<icalparameter_related>
    public var related: Wrap<icalparameter_related> {
        get { icalparameter_get_related(origin).hub.wrap() }
        set { icalparameter_set_related(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_reltype>
    public var reltype: Wrap<icalparameter_reltype> {
        get { icalparameter_get_reltype(origin).hub.wrap() }
        set { icalparameter_set_reltype(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_encoding>
    public var encoding: Wrap<icalparameter_encoding> {
        get { icalparameter_get_encoding(origin).hub.wrap() }
        set { icalparameter_set_encoding(origin, newValue.rawValue) }
    }
    
    /// String
    public var filename: String {
        get { icalparameter_get_filename(origin).hub.wrap() }
        set { icalparameter_set_filename(origin, newValue) }
    }
    
    /// String
    public var language: String {
        get { icalparameter_get_language(origin).hub.wrap() }
        set { icalparameter_set_language(origin, newValue) }
    }
    
    /// String
    public var localize: String {
        get { icalparameter_get_localize(origin).hub.wrap() }
        set { icalparameter_set_localize(origin, newValue) }
    }
    
    /// String
    public var modified: String {
        get { icalparameter_get_modified(origin).hub.wrap() }
        set { icalparameter_set_modified(origin, newValue) }
    }
    
    /// Wrap<icalparameter_partstat>
    public var partstat: Wrap<icalparameter_partstat> {
        get { icalparameter_get_partstat(origin).hub.wrap() }
        set { icalparameter_set_partstat(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_required>
    public var required: Wrap<icalparameter_required> {
        get { icalparameter_get_required(origin).hub.wrap() }
        set { icalparameter_set_required(origin, newValue.rawValue) }
    }
    
    /// UInt32
    public var response: Int32 {
        get { icalparameter_get_response(origin) }
        set { icalparameter_set_response(origin, newValue) }
    }
    
    /// Wrap<icalparameter_substate>
    public var substate: Wrap<icalparameter_substate> {
        get { icalparameter_get_substate(origin).hub.wrap() }
        set { icalparameter_set_substate(origin, newValue.rawValue) }
    }
    
    /// String
    public var managedID: String {
        get { icalparameter_get_managedid(origin).hub.wrap() }
        set { icalparameter_set_managedid(origin, newValue) }
    }
    
    /// String
    public var iana_name: String {
        get { icalparameter_get_iana_name(origin).hub.wrap() }
        set { icalparameter_set_iana_name(origin, newValue) }
    }
    
    /// String
    public var iana_value: String {
        get { icalparameter_get_iana_value(origin).hub.wrap() }
        set { icalparameter_set_iana_value(origin, newValue) }
    }
    
    /// Wrap<icalparameter_action>
    public var action: Wrap<icalparameter_action> {
        get { icalparameter_get_actionparam(origin).hub.wrap() }
        set { icalparameter_set_actionparam(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_patchaction>
    public var patchAction: Wrap<icalparameter_patchaction> {
        get { icalparameter_get_patchaction(origin).hub.wrap() }
        set { icalparameter_set_patchaction(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_stayinformed>
    public var stayInformed: Wrap<icalparameter_stayinformed> {
        get { icalparameter_get_stayinformed(origin).hub.wrap() }
        set { icalparameter_set_stayinformed(origin, newValue.rawValue) }
    }
    
    /// String
    public var delegatedTo: String {
        get { icalparameter_get_delegatedto(origin).hub.wrap() }
        set { icalparameter_set_delegatedto(origin, newValue) }
    }
    
    /// String
    public var delegatedFrom: String {
        get { icalparameter_get_delegatedfrom(origin).hub.wrap() }
        set { icalparameter_set_delegatedfrom(origin, newValue) }
    }
    
    /// String
    public var publiccomment: String {
        get { icalparameter_get_publiccomment(origin).hub.wrap() }
        set { icalparameter_set_publiccomment(origin, newValue) }
    }
    
    /// Wrap<icalparameter_scheduleagent>
    public var scheduleAgent: Wrap<icalparameter_scheduleagent> {
        get { icalparameter_get_scheduleagent(origin).hub.wrap() }
        set { icalparameter_set_scheduleagent(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_xlicerrortype>
    public var xlicErrorType: Wrap<icalparameter_xlicerrortype> {
        get { icalparameter_get_xlicerrortype(origin).hub.wrap() }
        set { icalparameter_set_xlicerrortype(origin, newValue.rawValue) }
    }
    
    /// String
    public var scheduleStatus: String {
        get { icalparameter_get_schedulestatus(origin).hub.wrap() }
        set { icalparameter_set_schedulestatus(origin, newValue) }
    }
    
    /// Wrap<icalparameter_xliccomparetype>
    public var xlicCompareType: Wrap<icalparameter_xliccomparetype> {
        get { icalparameter_get_xliccomparetype(origin).hub.wrap() }
        set { icalparameter_set_xliccomparetype(origin, newValue.rawValue) }
    }
    
    /// Wrap<icalparameter_scheduleforcesend>
    public var scheduleForceSend: Wrap<icalparameter_scheduleforcesend> {
        get { icalparameter_get_scheduleforcesend(origin).hub.wrap() }
        set { icalparameter_set_scheduleforcesend(origin, newValue.rawValue) }
    }
}
