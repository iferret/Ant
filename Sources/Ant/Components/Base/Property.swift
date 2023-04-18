//
//  Property.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical
import CoreLocation

public class Property: NSObject {
    
    // MARK: 公开属性
    
    /// Wrap<icalproperty_kind>
    public var kind: Wrap<icalproperty_kind> { icalproperty_isa(origin).hub.wrap() }
    /// 参数列表
    public var parameters: [Parameter] {
        return Wrap<icalparameter_kind>.allCases.reduce([], { $0 + icalproperty_get_array_parameter(from: origin, kind: $1.rawValue).map { Parameter($0) } })
    }
    /// Value
    public var value: Value {
        get { .init(icalproperty_get_value(origin)) }
        set { icalproperty_set_value(origin, newValue.origin) }
    }
    
    // MARK: 私有属性
    
    // icalproperty
    internal let origin: icalproperty
    
    // MARK: 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalproperty
    internal init(_ rawValue: icalproperty) {
        self.origin = rawValue
    }
    
    /// 构建
    /// - Parameter kind: Wrap<icalproperty_kind>
    public convenience init(kind: Wrap<icalproperty_kind>) {
        self.init(icalproperty_new(kind.rawValue))
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) throws {
        guard let newValue = icalproperty_new_from_string(rfc5545) else {
            throw icalerror.illegal(rfc5545)
        }
        self.init(newValue)
    }
    
    /// 构建
    /// - Parameter other: Property
    public convenience init(other: Property) {
        self.init(icalproperty_new_clone(other.origin))
    }
    
    /// 析构函数
    deinit {
        icalproperty_free(origin)
    }
}

extension Property {
    
    /// icalproperty_set_value
    /// - Parameter value: Value
    public func setValue(_ value: Value) {
        icalproperty_set_value(origin, value.origin)
    }
    
    /// icalproperty_set_value_from_string
    /// - Parameters:
    ///   - value: String
    ///   - kind: Wrap<icalvalue_kind>
    public func setValue(_ value: String, kind: Wrap<icalvalue_kind>) {
        icalproperty_set_value_from_string(origin, value, icalvalue_kind_to_string(kind.rawValue))
    }
    
    /// icalproperty_add_parameter
    /// - Parameter parameter: Parameter
    public func add(_ parameter: Parameter) {
        icalproperty_add_parameter(origin, parameter.origin)
    }
    
    /// icalproperty_set_parameter
    /// - Parameter parameter: Parameter
    public func set(_ parameter: Parameter) {
        icalproperty_set_parameter(origin, parameter.origin)
    }
    
    /// icalproperty_remove_parameter_by_kind
    /// - Parameter kind: Wrap<icalparameter_kind>
    public func removeAll(by kind: Wrap<icalparameter_kind>) {
        icalproperty_remove_parameter_by_kind(origin, kind.rawValue)
    }
    
    /// icalproperty_remove_parameter_by_name
    /// - Parameter name: String
    public func removeAll(by name: String) {
        icalproperty_remove_parameter_by_name(origin, name)
    }
    
}

extension Property {
    
    /// icalproperty_new_acceptresponse
    /// - Parameter value: String
    public convenience init(acceptresponse value: String) {
        self.init(icalproperty_new_acceptresponse(value))
    }
    
    /// icalproperty_new_acknowledged
    /// - Parameter value: Date
    public convenience init(acknowledged value: Date) {
        self.init(icalproperty_new_acknowledged(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_action
    /// - Parameter wrap: Wrap<icalproperty_action>
    public convenience init(action wrap: Wrap<icalproperty_action>) {
        self.init(icalproperty_new_action(wrap.rawValue))
    }
    
    /// icalproperty_new_allowconflict
    /// - Parameter value: String
    public convenience init(allowconflict value: String) {
        self.init(icalproperty_new_allowconflict(value))
    }
    
    /// icalproperty_new_attach
    /// - Parameter value: Attachment
    public convenience init(attach value: Attachment) {
        self.init(icalproperty_new_attach(value.origin))
    }
    
    /// icalproperty_new_attendee
    /// - Parameter value: String
    public convenience init(attendee value: String) {
        self.init(icalproperty_new_attendee(value))
    }
    
    /// icalproperty_new_busytype
    /// - Parameter wrap: Wrap<icalproperty_busytype>
    public convenience init(busytype wrap: Wrap<icalproperty_busytype>) {
        self.init(icalproperty_new_busytype(wrap.rawValue))
    }
    
    /// icalproperty_new_calid
    /// - Parameter value: String
    public convenience init(calid value: String) {
        self.init(icalproperty_new_calid(value))
    }
    
    /// icalproperty_new_calmaster
    /// - Parameter value: String
    public convenience init(calmaster value: String) {
        self.init(icalproperty_new_calmaster(value))
    }
    
    /// icalproperty_new_calscale
    /// - Parameter value: String
    public convenience init(calscale value: String) {
        self.init(icalproperty_new_calscale(value))
    }
    
    /// icalproperty_new_capversion
    /// - Parameter value: String
    public convenience init(capversion value: String) {
        self.init(icalproperty_new_capversion(value))
    }
    
    /// icalproperty_new_carlevel
    /// - Parameter wrap:  Wrap<icalproperty_carlevel>
    public convenience init(carlevel wrap: Wrap<icalproperty_carlevel>) {
        self.init(icalproperty_new_carlevel(wrap.rawValue))
    }
    
    /// icalproperty_new_carid
    /// - Parameter value: String
    public convenience init(carid value: String) {
        self.init(icalproperty_new_carid(value))
    }
    
    /// icalproperty_new_categories
    /// - Parameter value: String
    public convenience init(categories value: String) {
        self.init(icalproperty_new_categories(value))
    }
    
    /// icalproperty_new_class
    /// - Parameter wrap: Wrap<icalproperty_class>
    public convenience init(class wrap: Wrap<icalproperty_class>) {
        self.init(icalproperty_new_class(wrap.rawValue))
    }
    
    /// icalproperty_new_cmd
    /// - Parameter wrap: Wrap<icalproperty_cmd>
    public convenience init(cmd wrap: Wrap<icalproperty_cmd>) {
        self.init(icalproperty_new_cmd(wrap.rawValue))
    }
    
    /// icalproperty_new_color
    /// - Parameter value: String
    public convenience init(color value: String) {
        self.init(icalproperty_new_color(value))
    }
    
    /// icalproperty_new_comment
    /// - Parameter value: String
    public convenience init(comment value: String) {
        self.init(icalproperty_new_comment(value))
    }
    
    /// icalproperty_new_completed
    /// - Parameter value: Date
    public convenience init(completed value: Date) {
        self.init(icalproperty_new_completed(value.hub.icaltimetype))
    }
    
    /// components
    /// - Parameter value: String
    public convenience init(components value: String) {
        self.init(icalproperty_new_components(value))
    }
    
    /// icalproperty_new_conference
    /// - Parameter value: String
    public convenience init(conference value: String) {
        self.init(icalproperty_new_conference(value))
    }
    
    /// icalproperty_new_contact
    /// - Parameter value: String
    public convenience init(contact value: String) {
        self.init(icalproperty_new_contact(value))
    }
    
    /// icalproperty_new_created
    /// - Parameter value: Date
    public convenience init(created value: Date) {
        self.init(icalproperty_new_created(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_csid
    /// - Parameter value: csid
    public convenience init(csid value: String) {
        self.init(icalproperty_new_csid(value))
    }
    
    /// icalproperty_new_datemax
    /// - Parameter value: Date
    public convenience init(datemax value: Date) {
        self.init(icalproperty_new_datemax(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_datemin
    /// - Parameter value: Date
    public convenience init(datemin value: Date) {
        self.init(icalproperty_new_datemin(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_decreed
    /// - Parameter value: String
    public convenience init(decreed value: String) {
        self.init(icalproperty_new_decreed(value))
    }
    
    /// icalproperty_new_defaultcharset
    /// - Parameter value: String
    public convenience init(defaultCharset value: String) {
        self.init(icalproperty_new_defaultcharset(value))
    }
    
    /// icalproperty_new_defaultlocale
    /// - Parameter value: String
    public convenience init(defaultLocale value: String) {
        self.init(icalproperty_new_defaultlocale(value))
    }
    
    /// icalproperty_new_defaulttzid
    /// - Parameter value: String
    public convenience init(defaultTZID value: String) {
        self.init(icalproperty_new_defaulttzid(value))
    }
    
    /// icalproperty_new_defaultvcars
    /// - Parameter value: String
    public convenience init(defaultVcars value: String) {
        self.init(icalproperty_new_defaultvcars(value))
    }
    
    /// icalproperty_new_deny
    /// - Parameter value: String
    public convenience init(deny value: String) {
        self.init(icalproperty_new_deny(value))
    }
    
    /// icalproperty_new_description
    /// - Parameter value: String
    public convenience init(description value: String) {
        self.init(icalproperty_new_description(value))
    }
    
    /// icalproperty_new_dtend
    /// - Parameter value: Date
    public convenience init(dtend value: Date) {
        self.init(icalproperty_new_dtend(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_dtstamp
    /// - Parameter value: Date
    public convenience init(dtstamp value: Date) {
        self.init(icalproperty_new_dtstamp(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_dtstart
    /// - Parameter value: Date
    public convenience init(dtstart value: Date) {
        self.init(icalproperty_new_dtstart(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_due
    /// - Parameter value: Date
    public convenience init(due value: Date) {
        self.init(icalproperty_new_due(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_duration
    /// - Parameter value: icaldurationtype
    public convenience init(duration value: icaldurationtype) {
        self.init(icalproperty_new_duration(value))
    }
    
    /// icalproperty_new_estimatedduration
    /// - Parameter value: icaldurationtype
    public convenience init(estimatedduration value: icaldurationtype) {
        self.init(icalproperty_new_estimatedduration(value))
    }
    
    /// icalproperty_new_exdate
    /// - Parameter value: Date
    public convenience init(exdate value: Date) {
        self.init(icalproperty_new_exdate(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_expand
    /// - Parameter value: Int32
    public convenience init(expand value: Int32) {
        self.init(icalproperty_new_expand(value))
    }
    
    /// icalproperty_new_exrule
    /// - Parameter value: icalrecurrencetype
    public convenience init(exrule value: icalrecurrencetype) {
        self.init(icalproperty_new_exrule(value))
    }
    
    /// icalproperty_new_freebusy
    /// - Parameter value: icalperiodtype
    public convenience init(freebusy value: icalperiodtype) {
        self.init(icalproperty_new_freebusy(value))
    }
    
    /// icalproperty_new_geo
    /// - Parameter value: CLLocationCoordinate2D
    public convenience init(geo value: CLLocationCoordinate2D) {
        self.init(icalproperty_new_geo(value.hub.icalgeotype))
    }
    
    /// icalproperty_new_grant
    /// - Parameter value: String
    public convenience init(grant value: String) {
        self.init(icalproperty_new_grant(value))
    }
    
    /// icalproperty_new_image
    /// - Parameter value: Attachment
    public convenience init(image value: Attachment) {
        self.init(icalproperty_new_image(value.origin))
    }
    
    /// icalproperty_new_itipversion
    /// - Parameter value: String
    public convenience init(itipversion value: String) {
        self.init(icalproperty_new_itipversion(value))
    }
    
    /// icalproperty_new_lastmodified
    /// - Parameter value: Date
    public convenience init(lastmodified value: Date) {
        self.init(icalproperty_new_lastmodified(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_location
    /// - Parameter value: String
    public convenience init(location value: String) {
        self.init(icalproperty_new_location(value))
    }
    
    /// icalproperty_new_maxcomponentsize
    /// - Parameter value: Int32
    public convenience init(maxcomponentsize value: Int32) {
        self.init(icalproperty_new_maxcomponentsize(value))
    }
    
    /// icalproperty_new_maxdate
    /// - Parameter value: Date
    public convenience init(maxdate value: Date) {
        self.init(icalproperty_new_maxdate(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_maxresults
    /// - Parameter value: Int32
    public convenience init(maxresults value: Int32) {
        self.init(icalproperty_new_maxresults(value))
    }
    
    /// icalproperty_new_maxresultssize
    /// - Parameter value: Int32
    public convenience init(maxresultssize value: Int32) {
        self.init(icalproperty_new_maxresultssize(value))
    }
    
    /// icalproperty_new_method
    /// - Parameter wrap: Wrap<icalproperty_method>
    public convenience init(method wrap: Wrap<icalproperty_method>) {
        self.init(icalproperty_new_method(wrap.rawValue))
    }
    
    /// icalproperty_new_mindate
    /// - Parameter value: Date
    public convenience init(mindate value: Date) {
        self.init(icalproperty_new_mindate(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_multipart
    /// - Parameter value: String
    public convenience init(multipart value: String) {
        self.init(icalproperty_new_multipart(value))
    }
    
    /// icalproperty_new_name
    /// - Parameter value: String
    public convenience init(name value: String) {
        self.init(icalproperty_new_name(value))
    }
    
    /// icalproperty_new_organizer
    /// - Parameter value: String
    public convenience init(organizer value: String) {
        self.init(icalproperty_new_organizer(value))
    }
    
    /// icalproperty_new_owner
    /// - Parameter value: String
    public convenience init(owner value: String) {
        self.init(icalproperty_new_owner(value))
    }
    
    /// icalproperty_new_patchdelete
    /// - Parameter value: String
    public convenience init(patchdelete value: String) {
        self.init(icalproperty_new_patchdelete(value))
    }
    
    /// icalproperty_new_patchorder
    /// - Parameter value: Int32
    public convenience init(patchorder value: Int32) {
        self.init(icalproperty_new_patchorder(value))
    }
    
    /// icalproperty_new_patchparameter
    /// - Parameter value: String
    public convenience init(patchparameter value: String) {
        self.init(icalproperty_new_patchparameter(value))
    }
    
    /// icalproperty_new_patchtarget
    /// - Parameter value: String
    public convenience init(patchtarget value: String) {
        self.init(icalproperty_new_patchtarget(value))
    }
    
    /// icalproperty_new_patchversion
    /// - Parameter value: String
    public convenience init(patchversion value: String) {
        self.init(icalproperty_new_patchversion(value))
    }
    
    /// icalproperty_new_percentcomplete
    /// - Parameter value: Int32
    public convenience init(percentcomplete value: Int32) {
        self.init(icalproperty_new_percentcomplete(value))
    }
    
    /// icalproperty_new_permission
    /// - Parameter value: String
    public convenience init(permission value: String) {
        self.init(icalproperty_new_permission(value))
    }
    
    /// icalproperty_new_pollcompletion
    /// - Parameter wrap: Wrap<icalproperty_pollcompletion>
    public convenience init(pollcompletion wrap: Wrap<icalproperty_pollcompletion>) {
        self.init(icalproperty_new_pollcompletion(wrap.rawValue))
    }
    
    /// icalproperty_new_pollitemid
    /// - Parameter value: Int32
    public convenience init(pollitemid value: Int32) {
        self.init(icalproperty_new_pollitemid(value))
    }
    
    /// icalproperty_new_pollmode
    /// - Parameter wrap: Wrap<icalproperty_pollmode>
    public convenience init(pollmode wrap: Wrap<icalproperty_pollmode>) {
        self.init(icalproperty_new_pollmode(wrap.rawValue))
    }
    
    /// icalproperty_new_pollproperties
    /// - Parameter value: String
    public convenience init(pollproperties value: String) {
        self.init(icalproperty_new_pollproperties(value))
    }
    
    /// icalproperty_new_pollwinner
    /// - Parameter value: Int32
    public convenience init(pollwinner value: Int32) {
        self.init(icalproperty_new_pollwinner(value))
    }
    
    /// icalproperty_new_priority
    /// - Parameter value: Int32
    public convenience init(priority value: Int32) {
        self.init(icalproperty_new_priority(value))
    }
    
    /// icalproperty_new_prodid
    /// - Parameter value: String
    public convenience init(prodid value: String) {
        self.init(icalproperty_new_prodid(value))
    }
    
    /// icalproperty_new_query
    /// - Parameter value: String
    public convenience init(query value: String) {
        self.init(icalproperty_new_query(value))
    }
    
    /// icalproperty_new_querylevel
    /// - Parameter wrap: Wrap<icalproperty_querylevel>
    public convenience init(querylevel wrap: Wrap<icalproperty_querylevel>) {
        self.init(icalproperty_new_querylevel(wrap.rawValue))
    }
    
    /// icalproperty_new_queryid
    /// - Parameter value: String
    public convenience init(queryid value: String) {
        self.init(icalproperty_new_queryid(value))
    }
    
    /// icalproperty_new_queryname
    /// - Parameter value: String
    public convenience init(queryname value: String) {
        self.init(icalproperty_new_queryname(value))
    }
    
    /// icalproperty_new_rdate
    /// - Parameter value: icaldatetimeperiodtype
    public convenience init(rdate value: icaldatetimeperiodtype) {
        self.init(icalproperty_new_rdate(value))
    }
    
    /// icalproperty_new_recuraccepted
    /// - Parameter value: String
    public convenience init(recuraccepted value: String) {
        self.init(icalproperty_new_recuraccepted(value))
    }
    
    /// icalproperty_new_recurexpand
    /// - Parameter value: String
    public convenience init(recurexpand value: String) {
        self.init(icalproperty_new_recurexpand(value))
    }
    
    /// icalproperty_new_recurlimit
    /// - Parameter value: String
    public convenience init(recurlimit value: String) {
        self.init(icalproperty_new_recurlimit(value))
    }
    
    /// icalproperty_new_recurrenceid
    /// - Parameter value: Date
    public convenience init(recurrenceid value: Date) {
        self.init(icalproperty_new_recurrenceid(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_refreshinterval
    /// - Parameter value: icaldurationtype
    public convenience init(refreshinterval value: icaldurationtype) {
        self.init(icalproperty_new_refreshinterval(value))
    }
    
    /// icalproperty_new_relatedto
    /// - Parameter value: String
    public convenience init(relatedto value: String) {
        self.init(icalproperty_new_relatedto(value))
    }
    
    /// icalproperty_new_relcalid
    /// - Parameter value: String
    public convenience init(relcalid value: String) {
        self.init(icalproperty_new_relcalid(value))
    }
    
    /// icalproperty_new_repeat
    /// - Parameter value: Int32
    public convenience init(repeat value: Int32) {
        self.init(icalproperty_new_repeat(value))
    }
    
    /// icalproperty_new_replyurl
    /// - Parameter value: URL
    public convenience init(replyurl value: URL) {
        self.init(icalproperty_new_replyurl(value.absoluteString))
    }
    
    /// icalproperty_new_requeststatus
    /// - Parameter value: icalreqstattype
    public convenience init(requeststatus value: icalreqstattype) {
        self.init(icalproperty_new_requeststatus(value))
    }
    
    /// icalproperty_new_resources
    /// - Parameter value: String
    public convenience init(resources value: String) {
        self.init(icalproperty_new_resources(value))
    }
    
    /// icalproperty_new_response
    /// - Parameter value: Int32
    public convenience init(response value: Int32) {
        self.init(icalproperty_new_response(value))
    }
    
    /// icalproperty_new_restriction
    /// - Parameter value: String
    public convenience init(restriction value: String) {
        self.init(icalproperty_new_restriction(value))
    }
    
    /// icalproperty_new_rrule
    /// - Parameter value: icalrecurrencetype
    public convenience init(rrule value: icalrecurrencetype) {
        self.init(icalproperty_new_rrule(value))
    }
    
    /// icalproperty_new_scope
    /// - Parameter value: String
    public convenience init(scope value: String) {
        self.init(icalproperty_new_scope(value))
    }
    
    /// icalproperty_new_sequence
    /// - Parameter value: Int32
    public convenience init(sequence value: Int32) {
        self.init(icalproperty_new_sequence(value))
    }
    
    /// icalproperty_new_source
    /// - Parameter value: String
    public convenience init(source value: String) {
        self.init(icalproperty_new_source(value))
    }
    
    /// icalproperty_new_status
    /// - Parameter wrap: Wrap<icalproperty_status>
    public convenience init(status wrap: Wrap<icalproperty_status>) {
        self.init(icalproperty_new_status(wrap.rawValue))
    }
    
    /// icalproperty_new_storesexpanded
    /// - Parameter value: String
    public convenience init(storesexpanded value: String) {
        self.init(icalproperty_new_storesexpanded(value))
    }
    
    /// icalproperty_new_summary
    /// - Parameter value: String
    public convenience init(summary value: String) {
        self.init(icalproperty_new_summary(value))
    }
    
    /// icalproperty_new_target
    /// - Parameter value: String
    public convenience init(target value: String) {
        self.init(icalproperty_new_target(value))
    }
    
    /// icalproperty_new_taskmode
    /// - Parameter wrap: Wrap<icalproperty_taskmode>
    public convenience init(taskmode wrap: Wrap<icalproperty_taskmode>) {
        self.init(icalproperty_new_taskmode(wrap.rawValue))
    }
    
    /// icalproperty_new_transp
    /// - Parameter wrap: Wrap<icalproperty_transp>
    public convenience init(transp wrap: Wrap<icalproperty_transp>) {
        self.init(icalproperty_new_transp(wrap.rawValue))
    }
    
    /// icalproperty_new_trigger
    /// - Parameter value: icaltriggertype
    public convenience init(trigger value: icaltriggertype) {
        self.init(icalproperty_new_trigger(value))
    }
    
    /// icalproperty_new_tzid
    /// - Parameter value: String
    public convenience init(tzid value: String) {
        self.init(icalproperty_new_tzid(value))
    }
    
    /// icalproperty_new_tzidaliasof
    /// - Parameter value: String
    public convenience init(tzidaliasof value: String) {
        self.init(icalproperty_new_tzidaliasof(value))
    }
    
    /// icalproperty_new_tzname
    /// - Parameter value: String
    public convenience init(tzname value: String) {
        self.init(icalproperty_new_tzname(value))
    }
    
    /// icalproperty_new_tzoffsetfrom
    /// - Parameter value: Int32
    public convenience init(tzoffsetfrom value: Int32) {
        self.init(icalproperty_new_tzoffsetfrom(value))
    }
    
    /// icalproperty_new_tzoffsetto
    /// - Parameter value: Int32
    public convenience init(tzoffsetto value: Int32) {
        self.init(icalproperty_new_tzoffsetto(value))
    }
    
    /// icalproperty_new_tzuntil
    /// - Parameter value: Date
    public convenience init(tzuntil value: Date) {
        self.init(icalproperty_new_tzuntil(value.hub.icaltimetype))
    }
    
    /// icalproperty_new_tzurl
    /// - Parameter value: URL
    public convenience init(tzurl value: URL) {
        self.init(icalproperty_new_tzurl(value.absoluteString))
    }
    
    /// icalproperty_new_uid
    /// - Parameter value: String
    public convenience init(uid value: String) {
        self.init(icalproperty_new_uid(value))
    }
    
    /// icalproperty_new_url
    /// - Parameter value: URL
    public convenience init(url value: URL) {
        self.init(icalproperty_new_url(value.absoluteString))
    }
    
    /// icalproperty_new_version
    /// - Parameter value: String
    public convenience init(version value: String) {
        self.init(icalproperty_new_version(value))
    }
    
    /// icalproperty_new_voter
    /// - Parameter value: String
    public convenience init(voter value: String) {
        self.init(icalproperty_new_voter(value))
    }
    
    /// icalproperty_new_x
    /// - Parameter value: String
    public convenience init(x value: String) {
        self.init(icalproperty_new_x(value))
    }
    
    /// icalproperty_new_xlicclass
    /// - Parameter wrap: Wrap<icalproperty_xlicclass>
    public convenience init(xlicclass wrap: Wrap<icalproperty_xlicclass>) {
        self.init(icalproperty_new_xlicclass(wrap.rawValue))
    }
    
    /// icalproperty_new_xlicclustercount
    /// - Parameter value: String
    public convenience init(xlicclustercount value: String) {
        self.init(icalproperty_new_xlicclustercount(value))
    }
    
    /// icalproperty_new_xlicerror
    /// - Parameter value: String
    public convenience init(xlicerror value: String) {
        self.init(icalproperty_new_xlicerror(value))
    }
    
    /// icalproperty_new_xlicmimecharset
    /// - Parameter value: String
    public convenience init(xlicmimecharset value: String) {
        self.init(icalproperty_new_xlicmimecharset(value))
    }
    
    /// icalproperty_new_xlicmimecontenttype
    /// - Parameter value: String
    public convenience init(xlicmimecontenttype value: String) {
        self.init(icalproperty_new_xlicmimecontenttype(value))
    }
    
    /// icalproperty_new_xlicmimeencoding
    /// - Parameter value: String
    public convenience init(xlicmimeencoding value: String) {
        self.init(icalproperty_new_xlicmimeencoding(value))
    }
    
    /// icalproperty_new_xlicmimefilename
    /// - Parameter value: String
    public convenience init(xlicmimefilename value: String) {
        self.init(icalproperty_new_xlicmimefilename(value))
    }
    
    /// icalproperty_new_xlicmimeoptinfo
    /// - Parameter value: String
    public convenience init(xlicmimeoptinfo value: String) {
        self.init(icalproperty_new_xlicmimeoptinfo(value))
    }
    
}

extension Property {
    
    /// Any
    public var rawValue: Any? {
        switch kind {
        case .ANY:                  return icalproperty_get_value_as_string(origin)?.hub.wrap()
        case .ACCEPTRESPONSE:       return icalproperty_get_acceptresponse(origin)?.hub.wrap()
        case .ACKNOWLEDGED:         return icalproperty_get_acknowledged(origin).hub.wrap()
        case .ACTION:               return icalproperty_get_action(origin).hub.wrap()
        case .ALLOWCONFLICT:        return icalproperty_get_allowconflict(origin)?.hub.wrap()
        case .ATTACH:               return Attachment.init(icalproperty_get_attach(origin))
        case .ATTENDEE:             return icalproperty_get_attendee(origin)?.hub.wrap()
        case .BUSYTYPE:             return icalproperty_get_busytype(origin).hub.wrap()
        case .CALID:                return icalproperty_get_calid(origin)?.hub.wrap()
        case .CALMASTER:            return icalproperty_get_calmaster(origin)?.hub.wrap()
        case .CALSCALE:             return icalproperty_get_calscale(origin)?.hub.wrap()
        case .CAPVERSION:           return icalproperty_get_capversion(origin)?.hub.wrap()
        case .CARLEVEL:             return icalproperty_get_carlevel(origin).hub.wrap()
        case .CARID:                return icalproperty_get_carid(origin)?.hub.wrap()
        case .CATEGORIES:           return icalproperty_get_categories(origin)?.hub.wrap()
        case .CLASS:                return icalproperty_get_class(origin).hub.wrap()
        case .CMD:                  return icalproperty_get_cmd(origin).hub.wrap()
        case .COLOR:                return icalproperty_get_color(origin)?.hub.wrap()
        case .COMMENT:              return icalproperty_get_comment(origin)?.hub.wrap()
        case .COMPLETED:            return icalproperty_get_completed(origin).hub.wrap()
        case .COMPONENTS:           return icalproperty_get_components(origin)?.hub.wrap()
        case .CONFERENCE:           return icalproperty_get_conference(origin)?.hub.wrap()
        case .CONTACT:              return icalproperty_get_contact(origin)?.hub.wrap()
        case .CREATED:              return icalproperty_get_created(origin).hub.wrap()
        case .CSID:                 return icalproperty_get_csid(origin)?.hub.wrap()
        case .DATEMAX:              return icalproperty_get_datemax(origin).hub.wrap()
        case .DATEMIN:              return icalproperty_get_datemin(origin).hub.wrap()
        case .DECREED:              return icalproperty_get_decreed(origin)?.hub.wrap()
        case .DEFAULTCHARSET:       return icalproperty_get_defaultcharset(origin)?.hub.wrap()
        case .DEFAULTLOCALE:        return icalproperty_get_defaultlocale(origin)?.hub.wrap()
        case .DEFAULTTZID:          return icalproperty_get_defaulttzid(origin)?.hub.wrap()
        case .DEFAULTVCARS:         return icalproperty_get_defaultvcars(origin)?.hub.wrap()
        case .DENY:                 return icalproperty_get_deny(origin)?.hub.wrap()
        case .DESCRIPTION:          return icalproperty_get_description(origin)?.hub.wrap()
        case .DTEND:                return icalproperty_get_dtend(origin).hub.wrap()
        case .DTSTAMP:              return icalproperty_get_dtstamp(origin).hub.wrap()
        case .DTSTART:              return icalproperty_get_dtstart(origin).hub.wrap()
        case .DUE:                  return icalproperty_get_due(origin).hub.wrap()
        case .DURATION:             return icalproperty_get_duration(origin)
        case .ESTIMATEDDURATION:    return icalproperty_get_estimatedduration(origin)
        case .EXDATE:               return icalproperty_get_exdate(origin).hub.wrap()
        case .EXPAND:               return icalproperty_get_expand(origin)
        case .EXRULE:               return icalproperty_get_exrule(origin)
        case .FREEBUSY:             return icalproperty_get_freebusy(origin)
        case .GEO:                  return icalproperty_get_geo(origin).hub.wrap()
        case .GRANT:                return icalproperty_get_grant(origin)?.hub.wrap()
        case .IMAGE:                return Attachment.init(icalproperty_get_image(origin))
        case .ITIPVERSION:          return icalproperty_get_itipversion(origin)?.hub.wrap()
        case .LASTMODIFIED:         return icalproperty_get_lastmodified(origin).hub.wrap()
        case .LOCATION:             return icalproperty_get_location(origin)?.hub.wrap()
        case .MAXCOMPONENTSIZE:     return icalproperty_get_maxcomponentsize(origin)
        case .MAXDATE:              return icalproperty_get_maxdate(origin).hub.wrap()
        case .MAXRESULTS:           return icalproperty_get_maxresults(origin)
        case .MAXRESULTSSIZE:       return icalproperty_get_maxresultssize(origin)
        case .METHOD:               return icalproperty_get_method(origin).hub.wrap()
        case .MINDATE:              return icalproperty_get_mindate(origin).hub.wrap()
        case .MULTIPART:            return icalproperty_get_multipart(origin)?.hub.wrap()
        case .NAME:                 return icalproperty_get_name(origin)?.hub.wrap()
        case .ORGANIZER:            return icalproperty_get_organizer(origin)?.hub.wrap()
        case .OWNER:                return icalproperty_get_owner(origin)?.hub.wrap()
        case .PATCHDELETE:          return icalproperty_get_patchdelete(origin)?.hub.wrap()
        case .PATCHORDER:           return icalproperty_get_patchorder(origin)
        case .PATCHPARAMETER:       return icalproperty_get_patchparameter(origin)?.hub.wrap()
        case .PATCHTARGET:          return icalproperty_get_patchtarget(origin)?.hub.wrap()
        case .PATCHVERSION:         return icalproperty_get_patchversion(origin)?.hub.wrap()
        case .PERCENTCOMPLETE:      return icalproperty_get_percentcomplete(origin)
        case .PERMISSION:           return icalproperty_get_permission(origin)?.hub.wrap()
        case .POLLCOMPLETION:       return icalproperty_get_pollcompletion(origin).hub.wrap()
        case .POLLITEMID:           return icalproperty_get_pollitemid(origin)
        case .POLLMODE:             return icalproperty_get_pollmode(origin).hub.wrap()
        case .POLLPROPERTIES:       return icalproperty_get_pollproperties(origin)?.hub.wrap()
        case .POLLWINNER:           return icalproperty_get_pollwinner(origin)
        case .PRIORITY:             return icalproperty_get_priority(origin)
        case .PRODID:               return icalproperty_get_prodid(origin)?.hub.wrap()
        case .QUERY:                return icalproperty_get_query(origin)?.hub.wrap()
        case .QUERYLEVEL:           return icalproperty_get_querylevel(origin).hub.wrap()
        case .QUERYID:              return icalproperty_get_queryid(origin)?.hub.wrap()
        case .QUERYNAME:            return icalproperty_get_queryname(origin)?.hub.wrap()
        case .RDATE:                return icalproperty_get_rdate(origin)
        case .RECURACCEPTED:        return icalproperty_get_recuraccepted(origin)?.hub.wrap()
        case .RECUREXPAND:          return icalproperty_get_expand(origin)
        case .RECURLIMIT:           return icalproperty_get_recurlimit(origin)?.hub.wrap()
        case .RECURRENCEID:         return icalproperty_get_recurrenceid(origin).hub.wrap()
        case .REFRESHINTERVAL:      return icalproperty_get_refreshinterval(origin)
        case .RELATEDTO:            return icalproperty_get_relatedto(origin)?.hub.wrap()
        case .RELCALID:             return icalproperty_get_relcalid(origin)?.hub.wrap()
        case .REPEAT:               return icalproperty_get_repeat(origin)
        case .REPLYURL:             return icalproperty_get_replyurl(origin)?.hub.wrap().hub.toURL()
        case .REQUESTSTATUS:        return icalproperty_get_requeststatus(origin)
        case .RESOURCES:            return icalproperty_get_resources(origin)?.hub.wrap()
        case .RESPONSE:             return icalproperty_get_response(origin)
        case .RESTRICTION:          return icalproperty_get_restriction(origin)?.hub.wrap()
        case .RRULE:                return icalproperty_get_rrule(origin)
        case .SCOPE:                return icalproperty_get_scope(origin)?.hub.wrap()
        case .SEQUENCE:             return icalproperty_get_sequence(origin)
        case .SOURCE:               return icalproperty_get_source(origin)?.hub.wrap()
        case .STATUS:               return icalproperty_get_status(origin).hub.wrap()
        case .STORESEXPANDED:       return icalproperty_get_storesexpanded(origin)?.hub.wrap()
        case .SUMMARY:              return icalproperty_get_summary(origin)?.hub.wrap()
        case .TARGET:               return icalproperty_get_target(origin)?.hub.wrap()
        case .TASKMODE:             return icalproperty_get_taskmode(origin).hub.wrap()
        case .TRANSP:               return icalproperty_get_transp(origin).hub.wrap()
        case .TRIGGER:              return icalproperty_get_trigger(origin)
        case .TZID:                 return icalproperty_get_tzid(origin)?.hub.wrap()
        case .TZIDALIASOF:          return icalproperty_get_tzidaliasof(origin)?.hub.wrap()
        case .TZNAME:               return icalproperty_get_tzname(origin)?.hub.wrap()
        case .TZOFFSETFROM:         return icalproperty_get_tzoffsetfrom(origin)
        case .TZOFFSETTO:           return icalproperty_get_tzoffsetto(origin)
        case .TZUNTIL:              return icalproperty_get_tzuntil(origin).hub.wrap()
        case .TZURL:                return icalproperty_get_tzurl(origin)?.hub.wrap().hub.toURL()
        case .UID:                  return icalproperty_get_uid(origin)?.hub.wrap()
        case .URL:                  return icalproperty_get_url(origin)?.hub.wrap().hub.toURL()
        case .VERSION:              return icalproperty_get_version(origin)?.hub.wrap()
        case .VOTER:                return icalproperty_get_voter(origin)?.hub.wrap()
        case .X:                    return icalproperty_get_x(origin)?.hub.wrap()
        case .XLICCLASS:            return icalproperty_get_xlicclass(origin).hub.wrap()
        case .XLICCLUSTERCOUNT:     return icalproperty_get_xlicclustercount(origin)?.hub.wrap()
        case .XLICERROR:            return icalproperty_get_xlicerror(origin)?.hub.wrap()
        case .XLICMIMECHARSET:      return icalproperty_get_xlicmimecharset(origin)?.hub.wrap()
        case .XLICMIMECID:          return icalproperty_get_xlicmimecid(origin)?.hub.wrap()
        case .XLICMIMECONTENTTYPE:  return icalproperty_get_xlicmimecontenttype(origin)?.hub.wrap()
        case .XLICMIMEENCODING:     return icalproperty_get_xlicmimeencoding(origin)?.hub.wrap()
        case .XLICMIMEFILENAME:     return icalproperty_get_xlicmimefilename(origin)?.hub.wrap()
        case .XLICMIMEOPTINFO:      return icalproperty_get_xlicmimeoptinfo(origin)?.hub.wrap()
        default:                    return icalproperty_get_value_as_string(origin)?.hub.wrap()
        }
    }
}
