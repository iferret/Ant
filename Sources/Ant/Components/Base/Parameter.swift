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
    /// String
    public var x: String? { icalparameter_get_x(origin)?.hub.wrap() }
    /// String
    public var cn: String? { icalparameter_get_cn(origin)?.hub.wrap() }
    /// String
    public var id: String? { icalparameter_get_id(origin)?.hub.wrap() }
    /// String
    public var dir: String? { icalparameter_get_dir(origin)?.hub.wrap() }
    /// String
    public var iana: String? { icalparameter_get_iana(origin)?.hub.wrap() }
    /// Wrap<icalparameter_role>
    public var role: Wrap<icalparameter_role> { icalparameter_get_role(origin).hub.wrap()}
    /// Wrap<icalparameter_rsvp>
    public var rsvp: Wrap<icalparameter_rsvp> { icalparameter_get_rsvp(origin).hub.wrap() }
    /// String
    public var size: String? { icalparameter_get_size(origin)?.hub.wrap() }
    /// tzid
    public var tzid: String? { icalparameter_get_tzid(origin)?.hub.wrap() }
    /// String
    public var email: String? { icalparameter_get_email(origin)?.hub.wrap() }
    /// String
    public var label: String? { icalparameter_get_label(origin)?.hub.wrap() }
    /// Wrap<icalparameter_local>
    public var local: Wrap<icalparameter_local> { icalparameter_get_local(origin).hub.wrap() }
    /// Wrap<icalparameter_range>
    public var range: Wrap<icalparameter_range> { icalparameter_get_range(origin).hub.wrap() }
    /// Wrap<icalparameter_value>
    public var value: Wrap<icalparameter_value> { icalparameter_get_value(origin).hub.wrap() }
    /// String
    public var altrep: String? { icalparameter_get_altrep(origin)?.hub.wrap() }
    /// Wrap<icalparameter_cutype>
    public var cutype: Wrap<icalparameter_cutype> { icalparameter_get_cutype(origin).hub.wrap() }
    /// Wrap<icalparameter_enable>
    public var enable: Wrap<icalparameter_enable> { icalparameter_get_enable(origin).hub.wrap() }
    /// Wrap<icalparameter_fbtype>
    public var fbtype: Wrap<icalparameter_fbtype> { icalparameter_get_fbtype(origin).hub.wrap() }
    /// String
    public var member: String? { icalparameter_get_member(origin)?.hub.wrap() }
    /// String
    public var reason: String? { icalparameter_get_reason(origin)?.hub.wrap() }
    /// String
    public var sentby: String? { icalparameter_get_sentby(origin)?.hub.wrap() }
    /// String
    public var charset: String? { icalparameter_get_charset(origin)?.hub.wrap() }
    /// Wrap<icalparameter_display>
    public var display: Wrap<icalparameter_display> { icalparameter_get_display(origin).hub.wrap() }
    /// Wrap<icalparameter_feature>
    public var feature: Wrap<icalparameter_feature> {icalparameter_get_feature(origin).hub.wrap() }
    /// String
    public var fmttype: String? { icalparameter_get_fmttype(origin)?.hub.wrap() }
    /// String
    public var latency: String? { icalparameter_get_latency(origin)?.hub.wrap() }
    /// String
    public var options: String? { icalparameter_get_options(origin)?.hub.wrap() }
    /// Wrap<icalparameter_related>
    public var related: Wrap<icalparameter_related> { icalparameter_get_related(origin).hub.wrap() }
    /// Wrap<icalparameter_reltype>
    public var reltype: Wrap<icalparameter_reltype> { icalparameter_get_reltype(origin).hub.wrap() }
    /// Wrap<icalparameter_encoding>
    public var encoding: Wrap<icalparameter_encoding> { icalparameter_get_encoding(origin).hub.wrap() }
    /// String
    public var filename: String? { icalparameter_get_filename(origin)?.hub.wrap() }
    /// String
    public var language: String? { icalparameter_get_language(origin)?.hub.wrap() }
    /// String
    public var localize: String? { icalparameter_get_localize(origin)?.hub.wrap() }
    /// String
    public var modified: String? { icalparameter_get_modified(origin)?.hub.wrap() }
    /// Wrap<icalparameter_partstat>
    public var partstat: Wrap<icalparameter_partstat> { icalparameter_get_partstat(origin).hub.wrap() }
    /// Wrap<icalparameter_required>
    public var required: Wrap<icalparameter_required> { icalparameter_get_required(origin).hub.wrap() }
    /// UInt32
    public var response: Int32 { icalparameter_get_response(origin) }
    /// Wrap<icalparameter_substate>
    public var substate: Wrap<icalparameter_substate> { icalparameter_get_substate(origin).hub.wrap() }
    /// String
    public var managedID: String? { icalparameter_get_managedid(origin)?.hub.wrap() }
    /// Wrap<icalparameter_action>
    public var action: Wrap<icalparameter_action> { icalparameter_get_actionparam(origin).hub.wrap() }
    /// Wrap<icalparameter_patchaction>
    public var patchAction: Wrap<icalparameter_patchaction> { icalparameter_get_patchaction(origin).hub.wrap() }
    /// Wrap<icalparameter_stayinformed>
    public var stayInformed: Wrap<icalparameter_stayinformed> { icalparameter_get_stayinformed(origin).hub.wrap() }
    /// String
    public var delegatedTo: String? { icalparameter_get_delegatedto(origin)?.hub.wrap() }
    /// String
    public var delegatedFrom: String? { icalparameter_get_delegatedfrom(origin)?.hub.wrap() }
    /// String
    public var publiccomment: String? { icalparameter_get_publiccomment(origin)?.hub.wrap() }
    /// Wrap<icalparameter_scheduleagent>
    public var scheduleAgent: Wrap<icalparameter_scheduleagent> { icalparameter_get_scheduleagent(origin).hub.wrap() }
    /// Wrap<icalparameter_xlicerrortype>
    public var xlicErrorType: Wrap<icalparameter_xlicerrortype> { icalparameter_get_xlicerrortype(origin).hub.wrap() }
    /// String
    public var scheduleStatus: String? { icalparameter_get_schedulestatus(origin)?.hub.wrap() }
    /// Wrap<icalparameter_xliccomparetype>
    public var xlicCompareType: Wrap<icalparameter_xliccomparetype> { icalparameter_get_xliccomparetype(origin).hub.wrap() }
    /// Wrap<icalparameter_scheduleforcesend>
    public var scheduleForceSend: Wrap<icalparameter_scheduleforcesend> { icalparameter_get_scheduleforcesend(origin).hub.wrap() }
    
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
    
    /// x
    /// - Parameter x: String
    public convenience init(x value: String) {
        self.init(icalparameter_new_x(value))
    }
    
    /// cn
    /// - Parameter value: String
    public convenience init(cn value: String) {
        self.init(icalparameter_new_cn(value))
    }
    
    /// id
    /// - Parameter value: String
    public convenience init(id value: String) {
        self.init(icalparameter_new_id(value))
    }
    
    /// dir
    /// - Parameter value: String
    public convenience init(dir value: String) {
        self.init(icalparameter_new_dir(value))
    }
    
    /// iana
    /// - Parameter value: String
    public convenience init(iana value: String) {
        self.init(icalparameter_new_iana(value))
    }
    
    /// role
    /// - Parameter value: Wrap<icalparameter_role>
    public convenience init(role wrap: Wrap<icalparameter_role>) {
        self.init(icalparameter_new_role(wrap.rawValue))
    }
    
    /// rsvp
    /// - Parameter value: Wrap<icalparameter_rsvp>
    public convenience init(rsvp wrap: Wrap<icalparameter_rsvp>) {
        self.init(icalparameter_new_rsvp(wrap.rawValue))
    }
    
    /// size
    /// - Parameter value: String
    public convenience init(size value: String) {
        self.init(icalparameter_new_size(value))
    }
    
    /// tzid
    /// - Parameter value: String
    public convenience init(tzid value: String) {
        self.init(icalparameter_new_tzid(value))
    }
    
    /// email
    /// - Parameter value: String
    public convenience init(email value: String) {
        self.init(icalparameter_new_email(value))
    }
    
    /// label
    /// - Parameter value: String
    public convenience init(label value: String) {
        self.init(icalparameter_new_label(value))
    }
    
    /// local
    /// - Parameter wrap: Wrap<icalparameter_local>
    public convenience init(local wrap: Wrap<icalparameter_local>) {
        self.init(icalparameter_new_local(wrap.rawValue))
    }
    
    /// range
    /// - Parameter wrap: Wrap<icalparameter_range>
    public convenience init(range wrap: Wrap<icalparameter_range>) {
        self.init(icalparameter_new_range(wrap.rawValue))
    }
    
    /// value
    /// - Parameter wrap: Wrap<icalparameter_value>
    public convenience init(value wrap: Wrap<icalparameter_value>) {
        self.init(icalparameter_new_value(wrap.rawValue))
    }
    
    /// altrep
    /// - Parameter value: String
    public convenience init(altrep value: String) {
        self.init(icalparameter_new_altrep(value))
    }
    
    /// cutype
    /// - Parameter wrap: Wrap<icalparameter_cutype>
    public convenience init(cutype wrap: Wrap<icalparameter_cutype>) {
        self.init(icalparameter_new_cutype(wrap.rawValue))
    }
    
    /// enable
    /// - Parameter wrap: Wrap<icalparameter_enable>
    public convenience init(enable wrap: Wrap<icalparameter_enable>) {
        self.init(icalparameter_new_enable(wrap.rawValue))
    }
    
    /// fbtype
    /// - Parameter value: Wrap<icalparameter_fbtype>
    public convenience init(fbtype wrap: Wrap<icalparameter_fbtype>) {
        self.init(icalparameter_new_fbtype(wrap.rawValue))
    }
    
    /// member
    /// - Parameter value: String
    public convenience init(member value: String) {
        self.init(icalparameter_new_member(value))
    }
    
    /// reason
    /// - Parameter value: String
    public convenience init(reason value: String) {
        self.init(icalparameter_new_reason(value))
    }
    
    /// sentby
    /// - Parameter value: String
    public convenience init(sentby value: String) {
        self.init(icalparameter_new_sentby(value))
    }
    
    /// charset
    /// - Parameter value: String
    public convenience init(charset value: String) {
        self.init(icalparameter_new_charset(value))
    }
    
    /// display
    /// - Parameter wrap: Wrap<icalparameter_display>
    public convenience init(display wrap: Wrap<icalparameter_display>) {
        self.init(icalparameter_new_display(wrap.rawValue))
    }
    
    /// feature
    /// - Parameter wrap: Wrap<icalparameter_feature>
    public convenience init(feature wrap: Wrap<icalparameter_feature>) {
        self.init(icalparameter_new_feature(wrap.rawValue))
    }
    
    /// fmttype
    /// - Parameter value: String
    public convenience init(fmttype value: String) {
        self.init(icalparameter_new_fmttype(value))
    }
    
    /// latency
    /// - Parameter value: String
    public convenience init(latency value: String) {
        self.init(icalparameter_new_latency(value))
    }
    
    /// options
    /// - Parameter value: String
    public convenience init(options value: String) {
        self.init(icalparameter_new_options(value))
    }
    
    /// related
    /// - Parameter wrap: Wrap<icalparameter_related>
    public convenience init(related wrap: Wrap<icalparameter_related>) {
        self.init(icalparameter_new_related(wrap.rawValue))
    }
    
    /// reltype
    /// - Parameter wrap: Wrap<icalparameter_reltype>
    public convenience init(reltype wrap: Wrap<icalparameter_reltype>) {
        self.init(icalparameter_new_reltype(wrap.rawValue))
    }
    
    /// encoding
    /// - Parameter wrap: Wrap<icalparameter_encoding>
    public convenience init(encoding wrap: Wrap<icalparameter_encoding>) {
        self.init(icalparameter_new_encoding(wrap.rawValue))
    }
    
    /// filename
    /// - Parameter value: String
    public convenience init(filename value: String) {
        self.init(icalparameter_new_filename(value))
    }
    
    /// language
    /// - Parameter value: String
    public convenience init(language value: String) {
        self.init(icalparameter_new_language(value))
    }
    
    /// localize
    /// - Parameter value: String
    public convenience init(localize value: String) {
        self.init(icalparameter_new_localize(value))
    }
    
    /// modified
    /// - Parameter value: String
    public convenience init(modified value: String) {
        self.init(icalparameter_new_modified(value))
    }
    
    /// partstat
    /// - Parameter wrap: Wrap<icalparameter_partstat>
    public convenience init(partstat wrap: Wrap<icalparameter_partstat>) {
        self.init(icalparameter_new_partstat(wrap.rawValue))
    }
    
    /// required
    /// - Parameter wrap: Wrap<icalparameter_required>
    public convenience init(required wrap: Wrap<icalparameter_required>) {
        self.init(icalparameter_new_required(wrap.rawValue))
    }
    
    /// response
    /// - Parameter value: Int32
    public convenience init(response value: Int32) {
        self.init(icalparameter_new_response(value))
    }
    
    /// substate
    /// - Parameter wrap: Wrap<icalparameter_substate>
    public convenience init(substate wrap: Wrap<icalparameter_substate>) {
        self.init(icalparameter_new_substate(wrap.rawValue))
    }
    
    /// managedID
    /// - Parameter value: String
    public convenience init(managedID value: String) {
        self.init(icalparameter_new_managedid(value))
    }
    
    /// action
    /// - Parameter wrap: Wrap<icalparameter_action>
    public convenience init(action wrap: Wrap<icalparameter_action>) {
        self.init(icalparameter_new_actionparam(wrap.rawValue))
    }
    
    /// patchAction
    /// - Parameter wrap: Wrap<icalparameter_patchaction>
    public convenience init(patchAction wrap: Wrap<icalparameter_patchaction>) {
        self.init(icalparameter_new_patchaction(wrap.rawValue))
    }
    
    /// stayInformed
    /// - Parameter wrap: Wrap<icalparameter_stayinformed>
    public convenience init(stayInformed wrap: Wrap<icalparameter_stayinformed>) {
        self.init(icalparameter_new_stayinformed(wrap.rawValue))
    }
    
    /// delegatedTo
    /// - Parameter value: String
    public convenience init(delegatedTo value: String) {
        self.init(icalparameter_new_delegatedto(value))
    }
    
    /// delegatedFrom
    /// - Parameter value: String
    public convenience init(delegatedFrom value: String) {
        self.init(icalparameter_new_delegatedfrom(value))
    }
    
    /// publiccomment
    /// - Parameter value: String
    public convenience init(publicComment value: String) {
        self.init(icalparameter_new_publiccomment(value))
    }
    
    /// scheduleAgent
    /// - Parameter wrap: Wrap<icalparameter_scheduleagent>
    public convenience init(scheduleAgent wrap: Wrap<icalparameter_scheduleagent>) {
        self.init(icalparameter_new_scheduleagent(wrap.rawValue))
    }
    
    /// xlicErrorType
    /// - Parameter wrap: Wrap<icalparameter_xlicerrortype>
    public convenience init(xlicErrorType wrap: Wrap<icalparameter_xlicerrortype>) {
        self.init(icalparameter_new_xlicerrortype(wrap.rawValue))
    }
    
    /// scheduleStatus
    /// - Parameter value: String
    public convenience init(scheduleStatus value: String) {
        self.init(icalparameter_new_schedulestatus(value))
    }
    
    /// xlicCompareType
    /// - Parameter wrap: Wrap<icalparameter_xliccomparetype>
    public convenience init(xlicCompareType wrap: Wrap<icalparameter_xliccomparetype>) {
        self.init(icalparameter_new_xliccomparetype(wrap.rawValue))
    }
    
    /// scheduleForceSend
    /// - Parameter wrap: Wrap<icalparameter_scheduleforcesend>
    public convenience init(scheduleForceSend wrap: Wrap<icalparameter_scheduleforcesend>) {
        self.init(icalparameter_new_scheduleforcesend(wrap.rawValue))
    }
}

