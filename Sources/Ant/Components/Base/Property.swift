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
    
    /// icalproperty
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
    
    /// 设置 value
    /// - Parameter value: Value
    public func setValue(_ value: Value) {
        icalproperty_set_value(origin, value.origin)
    }
    
    /// setValue
    /// - Parameters:
    ///   - value: String
    ///   - kind: Wrap<icalvalue_kind>
    public func setValue(_ value: String, kind: Wrap<icalvalue_kind>) {
        icalproperty_set_value_from_string(origin, value, icalvalue_kind_to_string(kind.rawValue))
    }
    
    /// 添加参数
    /// - Parameter parameter: Parameter
    public func add(_ parameter: Parameter) {
        icalproperty_add_parameter(origin, parameter.origin)
    }
    
    /// 批量添加参数
    /// - Parameter parameters: [Parameter]
    public func add(_ parameters: [Parameter]) {
        parameters.forEach { add($0) }
    }
    
    /// 设置参数
    /// - Parameter parameter: Parameter
    public func set(_ parameter: Parameter) {
        icalproperty_set_parameter(origin, parameter.origin)
    }
    
    /// 删除参数
    /// - Parameter kind: Wrap<icalparameter_kind>
    public func removeAll(by kind: Wrap<icalparameter_kind>) {
        icalproperty_remove_parameter_by_kind(origin, kind.rawValue)
    }
    
    /// 删除参数
    /// - Parameter name: String
    public func removeAll(by name: String) {
        icalproperty_remove_parameter_by_name(origin, name)
    }
    
}

extension Property {
    
    /// x
    /// - Parameter value: String
    public convenience init(x value: String) {
        self.init(icalproperty_new_x(value))
    }
    
    /// cmd
    /// - Parameter wrap: Wrap<icalproperty_cmd>
    public convenience init(cmd wrap: Wrap<icalproperty_cmd>) {
        self.init(icalproperty_new_cmd(wrap.rawValue))
    }
    
    /// due
    /// - Parameter value: Dates
    public convenience init(due value: Date) {
        self.init(icalproperty_new_due(value.hub.icaltimetype))
    }
    
    /// geo
    /// - Parameter value: CLLocationCoordinate2D
    public convenience init(geo value: CLLocationCoordinate2D) {
        self.init(icalproperty_new_geo(value.hub.icalgeotype))
    }
    
    /// uid
    /// - Parameter value: String
    public convenience init(uid value: String) {
        self.init(icalproperty_new_uid(value))
    }
    
    /// url
    /// - Parameter value: URL
    public convenience init(url value: URL) {
        self.init(icalproperty_new_url(value.absoluteString))
    }
    
    /// csid
    /// - Parameter value: String
    public convenience init(csid value: String) {
        self.init(icalproperty_new_csid(value))
    }
    
    /// deny
    /// - Parameter value: String
    public convenience init(deny value: String) {
        self.init(icalproperty_new_deny(value))
    }
    
    /// name
    /// - Parameter value: String
    public convenience init(name value: String) {
        self.init(icalproperty_new_name(value))
    }
    
    /// tzid
    /// - Parameter value: String
    public convenience init(tzid value: String) {
        self.init(icalproperty_new_tzid(value))
    }
    
    /// calid
    /// - Parameter value: String
    public convenience init(calid value: String) {
        self.init(icalproperty_new_calid(value))
    }
    
    /// carid
    /// - Parameter value: String
    public convenience init(carid value: String) {
        self.init(icalproperty_new_carid(value))
    }
    
    /// class
    /// - Parameter wrap: Wrap<icalproperty_class>
    public convenience init(class wrap: Wrap<icalproperty_class>) {
        self.init(icalproperty_new_class(wrap.rawValue))
    }
    
    /// color
    /// - Parameter value: String
    public convenience init(color value: String) {
        self.init(icalproperty_new_color(value))
    }
    
    /// dtend
    /// - Parameter value: Date
    public convenience init(dtend value: Date) {
        self.init(icalproperty_new_dtend(value.hub.icaltimetype))
    }
    
    /// grant
    /// - Parameter value: String
    public convenience init(grant value: String) {
        self.init(icalproperty_new_grant(value))
    }
    
    /// image
    /// - Parameter value: OpaquePointer
    public convenience init(image value: Attachment) {
        self.init(icalproperty_new_image(value.origin))
    }
    
    /// owner
    /// - Parameter value: String
    public convenience init(owner value: String) {
        self.init(icalproperty_new_owner(value))
    }
    
    /// query
    /// - Parameter value: String
    public convenience init(query value: String) {
        self.init(icalproperty_new_query(value))
    }
    
    /// rdate
    /// - Parameter value: icaldatetimeperiodtype
    public convenience init(rdate value: icaldatetimeperiodtype) {
        self.init(icalproperty_new_rdate(value))
    }
    
    /// rrule
    /// - Parameter value: icalrecurrencetype
    public convenience init(rrule value: icalrecurrencetype) {
        self.init(icalproperty_new_rrule(value))
    }
    
    /// scope
    /// - Parameter value: String
    public convenience init(scope value: String) {
        self.init(icalproperty_new_scope(value))
    }
    
    /// tzurl
    /// - Parameter value: URL
    public convenience init(tzUrl value: URL) {
        self.init(icalproperty_new_tzurl(value.absoluteString))
    }
    
    /// voter
    /// - Parameter value: String
    public convenience init(voter value: String) {
        self.init(icalproperty_new_voter(value))
    }
    
    /// action
    /// - Parameter wrap: Wrap<icalproperty_action>
    public convenience init(action wrap: Wrap<icalproperty_action>) {
        self.init(icalproperty_new_action(wrap.rawValue))
    }
    
    /// attach
    /// - Parameter value: OpaquePointer
    public convenience init(attach value: Attachment) {
        self.init(icalproperty_new_attach(value.origin))
    }
    
    /// exDate
    /// - Parameter value: Date
    public convenience init(exDate value: Date) {
        self.init(icalproperty_new_exdate(value.hub.icaltimetype))
    }
    
    /// expand
    /// - Parameter value: Int32
    public convenience init(expand value: Int32) {
        self.init(icalproperty_new_expand(value))
    }
    
    /// exrule
    /// - Parameter value: icalrecurrencetype
    public convenience init(exrule value: icalrecurrencetype) {
        self.init(icalproperty_new_exrule(value))
    }
    
    /// method
    /// - Parameter wrap: Wrap<icalproperty_method>
    public convenience init(method wrap: Wrap<icalproperty_method>) {
        self.init(icalproperty_new_method(wrap.rawValue))
    }
    
    /// prodid
    /// - Parameter value: String
    public convenience init(prodid value: String) {
        self.init(icalproperty_new_prodid(value))
    }
    
    /// repeat
    /// - Parameter value: Int32
    public convenience init(repeat value: Int32) {
        self.init(icalproperty_new_repeat(value))
    }
    
    /// source
    /// - Parameter value: String
    public convenience init(source value: String) {
        self.init(icalproperty_new_source(value))
    }
    
    /// status
    /// - Parameter wrap: Wrap<icalproperty_status>
    public convenience init(status wrap: Wrap<icalproperty_status>) {
        self.init(icalproperty_new_status(wrap.rawValue))
    }
    
    /// target
    /// - Parameter value: String
    public convenience init(target value: String) {
        self.init(icalproperty_new_target(value))
    }
    
    /// transp
    /// - Parameter wrap: Wrap<icalproperty_transp>
    public convenience init(transp wrap: Wrap<icalproperty_transp>) {
        self.init(icalproperty_new_transp(wrap.rawValue))
    }
    
    /// tzname
    /// - Parameter value: String
    public convenience init(tzname value: String) {
        self.init(icalproperty_new_tzname(value))
    }
    
    /// comment
    /// - Parameter value: String
    public convenience init(comment value: String) {
        self.init(icalproperty_new_comment(value))
    }
    
    /// contact
    /// - Parameter value: String
    public convenience init(contact value: String) {
        self.init(icalproperty_new_contact(value))
    }
    
    /// created
    /// - Parameter value: Date
    public convenience init(created value: Date) {
        self.init(icalproperty_new_created(value.hub.icaltimetype))
    }
    
    /// dateMax
    /// - Parameter value: Date
    public convenience init(datemax value: Date) {
        self.init(icalproperty_new_datemax(value.hub.icaltimetype))
    }
    
    /// dateMin
    /// - Parameter value: Date
    public convenience init(datemin value: Date) {
        self.init(icalproperty_new_datemin(value.hub.icaltimetype))
    }
    
    /// decreed
    /// - Parameter value: String
    public convenience init(decreed value: String) {
        self.init(icalproperty_new_decreed(value))
    }
    
    /// dtstamp
    /// - Parameter value: Date
    public convenience init(dtstamp value: Date) {
        self.init(icalproperty_new_dtstamp(value.hub.icaltimetype))
    }
    
    /// dtstart
    /// - Parameter value: Date
    public convenience init(dtstart value: Date) {
        self.init(icalproperty_new_dtstart(value.hub.icaltimetype))
    }
    
    /// maxDate
    /// - Parameter value: Date
    public convenience init(maxdate value: Date) {
        self.init(icalproperty_new_maxdate(value.hub.icaltimetype))
    }
    
    /// minDate
    /// - Parameter value: Date
    public convenience init(mindate value: Date) {
        self.init(icalproperty_new_mindate(value.hub.icaltimetype))
    }
    
    /// queryID
    /// - Parameter value: String
    public convenience init(queryid value: String) {
        self.init(icalproperty_new_queryid(value))
    }
    
    /// summary
    /// - Parameter value: String
    public convenience init(summary value: String) {
        self.init(icalproperty_new_summary(value))
    }
    
    /// trigger
    /// - Parameter value: icaltriggertype
    public convenience init(trigger value: icaltriggertype) {
        self.init(icalproperty_new_trigger(value))
    }
    
    /// tzUntil
    /// - Parameter value: Date
    public convenience init(tzUntil value: Date) {
        self.init(icalproperty_new_tzuntil(value.hub.icaltimetype))
    }
    
    /// version
    /// - Parameter value: String
    public convenience init(version value: String) {
        self.init(icalproperty_new_version(value))
    }
    
    /// attendee
    /// - Parameter value: String
    public convenience init(attendee value: String) {
        self.init(icalproperty_new_attendee(value))
    }
    
    /// busyType
    /// - Parameter wrap: Wrap<icalproperty_busytype>
    public convenience init(busyType wrap: Wrap<icalproperty_busytype>) {
        self.init(icalproperty_new_busytype(wrap.rawValue))
    }
    
    /// calscale
    /// - Parameter value: String
    public convenience init(calscale value: String) {
        self.init(icalproperty_new_calscale(value))
    }
    
    /// carlevel
    /// - Parameter wrap: Wrap<icalproperty_carlevel>
    public convenience init(carlevel wrap: Wrap<icalproperty_carlevel>) {
        self.init(icalproperty_new_carlevel(wrap.rawValue))
    }
    
    /// duration
    /// - Parameter value: icaldurationtype
    public convenience init(duration value: icaldurationtype) {
        self.init(icalproperty_new_duration(value))
    }
    
    /// freeBusy
    /// - Parameter value: icalperiodtype
    public convenience init(freebusy value: icalperiodtype) {
        self.init(icalproperty_new_freebusy(value))
    }
    
    /// location
    /// - Parameter value: String
    public convenience init(location value: String) {
        self.init(icalproperty_new_location(value))
    }
    
    /// pollmode
    /// - Parameter wrap: Wrap<icalproperty_pollmode>
    public convenience init(pollmode wrap: Wrap<icalproperty_pollmode>) {
        self.init(icalproperty_new_pollmode(wrap.rawValue))
    }
    
    /// priority
    /// - Parameter value: Int32
    public convenience init(priority value: Int32) {
        self.init(icalproperty_new_priority(value))
    }
    
    /// relcalid
    /// - Parameter value: String
    public convenience init(relcalid value: String) {
        self.init(icalproperty_new_relcalid(value))
    }
    
    /// replyUrl
    /// - Parameter value: URL
    public convenience init(replyurl value: URL) {
        self.init(icalproperty_new_replyurl(value.absoluteString))
    }
    
    /// response
    /// - Parameter value: Int32
    public convenience init(response value: Int32) {
        self.init(icalproperty_new_response(value))
    }
    
    /// sequence
    /// - Parameter value: Int32
    public convenience init(sequence value: Int32) {
        self.init(icalproperty_new_sequence(value))
    }
    
    /// taskmode
    /// - Parameter wrap: Wrap<icalproperty_taskmode>
    public convenience init(taskmode wrap: Wrap<icalproperty_taskmode>) {
        self.init(icalproperty_new_taskmode(wrap.rawValue))
    }
    
    /// calmaster
    /// - Parameter value: String
    public convenience init(calmaster value: String) {
        self.init(icalproperty_new_calmaster(value))
    }
    
    /// completed
    /// - Parameter value: Date
    public convenience init(completed value: Date) {
        self.init(icalproperty_new_completed(value.hub.icaltimetype))
    }
    
    /// multipart
    /// - Parameter value: String
    public convenience init(multipart value: String) {
        self.init(icalproperty_new_multipart(value))
    }
    
    /// organizer
    /// - Parameter value: String
    public convenience init(organizer value: String) {
        self.init(icalproperty_new_organizer(value))
    }
    
    /// queryname
    /// - Parameter value: String
    public convenience init(queryname value: String) {
        self.init(icalproperty_new_queryname(value))
    }
    
    /// relatedto
    /// - Parameter value: String
    public convenience init(relatedto value: String) {
        self.init(icalproperty_new_relatedto(value))
    }
    
    /// resources
    /// - Parameter value: String
    public convenience init(resources value: String) {
        self.init(icalproperty_new_resources(value))
    }
    
    /// xlicclass
    /// - Parameter wrap: Wrap<icalproperty_xlicclass>
    public convenience init(xlicclass wrap: Wrap<icalproperty_xlicclass>) {
        self.init(icalproperty_new_xlicclass(wrap.rawValue))
    }
    
    /// xlicerror
    /// - Parameter value: String
    public convenience init(xlicerror value: String) {
        self.init(icalproperty_new_xlicerror(value))
    }
    
    /// capversion
    /// - Parameter value: String
    public convenience init(capversion value: String) {
        self.init(icalproperty_new_capversion(value))
    }
    
    /// categories
    /// - Parameter value: String
    public convenience init(categories value: String) {
        self.init(icalproperty_new_categories(value))
    }
    
    /// components
    /// - Parameter value: String
    public convenience init(components value: String) {
        self.init(icalproperty_new_components(value))
    }
    
    /// conference
    /// - Parameter value: value
    public convenience init(conference value: String) {
        self.init(icalproperty_new_conference(value))
    }
    
    /// maxresults
    /// - Parameter value: Int32
    public convenience init(maxresults value: Int32) {
        self.init(icalproperty_new_maxresults(value))
    }
    
    /// patchorder
    /// - Parameter value: Int32
    public convenience init(patchorder value: Int32) {
        self.init(icalproperty_new_patchorder(value))
    }
    
    /// permission
    /// - Parameter value: String
    public convenience init(permission value: String) {
        self.init(icalproperty_new_permission(value))
    }
    
    /// pollitemid
    /// - Parameter value: Int32
    public convenience init(_pollitemid value: Int32) {
        self.init(icalproperty_new_pollitemid(value))
    }
    
    /// pollwinner
    /// - Parameter value: Int32
    public convenience init(pollwinner value: Int32) {
        self.init(icalproperty_new_pollwinner(value))
    }
    
    /// querylevel
    /// - Parameter wrap: Wrap<icalproperty_querylevel>
    public convenience init(querylevel wrap: Wrap<icalproperty_querylevel>) {
        self.init(icalproperty_new_querylevel(wrap.rawValue))
    }
    
    /// recurlimit
    /// - Parameter value: String
    public convenience init(recurlimit value: String) {
        self.init(icalproperty_new_recurlimit(value))
    }
    
    /// tzoffsetto
    /// - Parameter value: Int32
    public convenience init(tzoffsetto value: Int32) {
        self.init(icalproperty_new_tzoffsetto(value))
    }
    
    /// defaulttzid
    /// - Parameter value: String
    public convenience init(defaulttzid value: String) {
        self.init(icalproperty_new_defaulttzid(value))
    }
    
    /// description
    /// - Parameter value: String
    public convenience init(description value: String) {
        self.init(icalproperty_new_description(value))
    }
    
    /// itipversion
    /// - Parameter value: String
    public convenience init(itipVersion value: String) {
        self.init(icalproperty_new_itipversion(value))
    }
    
    /// patchDelete
    /// - Parameter value: String
    public convenience init(patchDelete value: String) {
        self.init(icalproperty_new_patchdelete(value))
    }
    
    /// patchTarget
    /// - Parameter value: String
    public convenience init(patchTarget value: String) {
        self.init(icalproperty_new_patchtarget(value))
    }
    
    /// restriction
    /// - Parameter value: String
    public convenience init(restriction value: String) {
        self.init(icalproperty_new_restriction(value))
    }
    
    /// tzidaliasof
    /// - Parameter value: String
    public convenience init(tzidaliasof value: String) {
        self.init(icalproperty_new_tzidaliasof(value))
    }
    
    /// xlicmimecid
    /// - Parameter value: String
    public convenience init(xlicmimecid value: String) {
        self.init(icalproperty_new_xlicmimecid(value))
    }
    
    /// acknowledged
    /// - Parameter value: Date
    public convenience init(acknowledged value: Date) {
        self.init(icalproperty_new_acknowledged(value.hub.icaltimetype))
    }
    
    /// defaultvcars
    /// - Parameter value: String
    public convenience init(defaultvcars value: String) {
        self.init(icalproperty_new_defaultvcars(value))
    }
}


extension Property {
    
    public var rawValue: Any? {
        switch kind {
            /// ICAL_ANY_PROPERTY
        case .ANY: return icalproperty_get_value_as_string(origin)?.hub.wrap()
            /// ICAL_ACCEPTRESPONSE_PROPERTY
        case .ACCEPTRESPONSE:
            /// ICAL_ACKNOWLEDGED_PROPERTY
            case .ACKNOWLEDGED:
            /// ICAL_ACTION_PROPERTY
            case .ACTION:
            /// ICAL_ALLOWCONFLICT_PROPERTY
            case .ALLOWCONFLICT:
            /// ICAL_ATTACH_PROPERTY
            case .ATTACH:
            /// ICAL_ATTENDEE_PROPERTY
            case .ATTENDEE:
            /// ICAL_BUSYTYPE_PROPERTY
            case .BUSYTYPE:
            /// ICAL_CALID_PROPERTY
            case .CALID:
            /// ICAL_CALMASTER_PROPERTY
            case .CALMASTER:
            /// ICAL_CALSCALE_PROPERTY
            case .CALSCALE:
            /// ICAL_CAPVERSION_PROPERTY
            case .CAPVERSION:
            /// ICAL_CARLEVEL_PROPERTY
            case .CARLEVEL:
            /// ICAL_CARID_PROPERTY
            case .CARID:
            /// ICAL_CATEGORIES_PROPERTY
            case .CATEGORIES:
            /// ICAL_CLASS_PROPERTY
            case .CLASS:
            /// ICAL_CMD_PROPERTY
            case .CMD:
            /// ICAL_COLOR_PROPERTY
            case .COLOR:
            /// ICAL_COMMENT_PROPERTY
            case .COMMENT:
            /// ICAL_COMPLETED_PROPERTY
            case .COMPLETED:
            /// ICAL_COMPONENTS_PROPERTY
            case .COMPONENTS:
            /// ICAL_CONFERENCE_PROPERTY
            case .CONFERENCE:
            /// ICAL_CONTACT_PROPERTY
            case .CONTACT:
            /// ICAL_CREATED_PROPERTY
            case .CREATED:
            /// ICAL_CSID_PROPERTY
            case .CSID:
            /// ICAL_DATEMAX_PROPERTY
            case .DATEMAX:
            /// ICAL_DATEMIN_PROPERTY
            case .DATEMIN:
            /// ICAL_DECREED_PROPERTY
            case .DECREED:
            /// ICAL_DEFAULTCHARSET_PROPERTY
            case .DEFAULTCHARSET:
            /// ICAL_DEFAULTLOCALE_PROPERTY
            case .DEFAULTLOCALE:
            /// ICAL_DEFAULTTZID_PROPERTY
            case .DEFAULTTZID:
            /// ICAL_DEFAULTVCARS_PROPERTY
            case .DEFAULTVCARS:
            /// ICAL_DENY_PROPERTY
            case .DENY:
            /// ICAL_DESCRIPTION_PROPERTY
            case .DESCRIPTION:
            /// ICAL_DTEND_PROPERTY
            case .DTEND:
            /// ICAL_DTSTAMP_PROPERTY
            case .DTSTAMP:
            /// ICAL_DTSTART_PROPERTY
            case .DTSTART:
            /// ICAL_DUE_PROPERTY
            case .DUE:
            /// ICAL_DURATION_PROPERTY
            case .DURATION:
            /// ICAL_ESTIMATEDDURATION_PROPERTY
            case .ESTIMATEDDURATION:
            /// ICAL_EXDATE_PROPERTY
            case .EXDATE:
            /// ICAL_EXPAND_PROPERTY
            case .EXPAND: Wrap<icalproperty_kind> { .init(ICAL_EXPAND_PROPERTY) }
            /// ICAL_EXRULE_PROPERTY
            case .EXRULE: Wrap<icalproperty_kind> { .init(ICAL_EXRULE_PROPERTY) }
            /// ICAL_FREEBUSY_PROPERTY
            case .FREEBUSY: Wrap<icalproperty_kind> { .init(ICAL_FREEBUSY_PROPERTY) }
            /// ICAL_GEO_PROPERTY
            case .GEO: Wrap<icalproperty_kind> { .init(ICAL_GEO_PROPERTY) }
            /// ICAL_GRANT_PROPERTY
            case .GRANT: Wrap<icalproperty_kind> { .init(ICAL_GRANT_PROPERTY) }
            /// ICAL_IMAGE_PROPERTY
            case .IMAGE: Wrap<icalproperty_kind> { .init(ICAL_IMAGE_PROPERTY) }
            /// ICAL_ITIPVERSION_PROPERTY
            case .ITIPVERSION: Wrap<icalproperty_kind> { .init(ICAL_ITIPVERSION_PROPERTY) }
            /// ICAL_LASTMODIFIED_PROPERTY
            case .LASTMODIFIED: Wrap<icalproperty_kind> { .init(ICAL_LASTMODIFIED_PROPERTY) }
            /// ICAL_LOCATION_PROPERTY
            case .LOCATION: Wrap<icalproperty_kind> { .init(ICAL_LOCATION_PROPERTY) }
            /// ICAL_MAXCOMPONENTSIZE_PROPERTY
            case .MAXCOMPONENTSIZE: Wrap<icalproperty_kind> { .init(ICAL_MAXCOMPONENTSIZE_PROPERTY) }
            /// ICAL_MAXDATE_PROPERTY
            case .MAXDATE: Wrap<icalproperty_kind> { .init(ICAL_MAXDATE_PROPERTY) }
            /// ICAL_MAXRESULTS_PROPERTY
            case .MAXRESULTS: Wrap<icalproperty_kind> { .init(ICAL_MAXRESULTS_PROPERTY) }
            /// ICAL_MAXRESULTSSIZE_PROPERTY
            case .MAXRESULTSSIZE: Wrap<icalproperty_kind> { .init(ICAL_MAXRESULTSSIZE_PROPERTY) }
            /// ICAL_METHOD_PROPERTY
            case .METHOD: Wrap<icalproperty_kind> { .init(ICAL_METHOD_PROPERTY) }
            /// ICAL_MINDATE_PROPERTY
            case .MINDATE: Wrap<icalproperty_kind> { .init(ICAL_MINDATE_PROPERTY) }
            /// ICAL_MULTIPART_PROPERTY
            case .MULTIPART: Wrap<icalproperty_kind> { .init(ICAL_MULTIPART_PROPERTY) }
            /// ICAL_NAME_PROPERTY
            case .NAME: Wrap<icalproperty_kind> { .init(ICAL_NAME_PROPERTY) }
            /// ICAL_ORGANIZER_PROPERTY
            case .ORGANIZER: Wrap<icalproperty_kind> { .init(ICAL_ORGANIZER_PROPERTY) }
            /// ICAL_OWNER_PROPERTY
            case .OWNER: Wrap<icalproperty_kind> { .init(ICAL_OWNER_PROPERTY) }
            /// ICAL_PATCHDELETE_PROPERTY
            case .PATCHDELETE: Wrap<icalproperty_kind> { .init(ICAL_PATCHDELETE_PROPERTY) }
            /// ICAL_PATCHORDER_PROPERTY
            case .PATCHORDER: Wrap<icalproperty_kind> { .init(ICAL_PATCHORDER_PROPERTY) }
            /// ICAL_PATCHPARAMETER_PROPERTY
            case .PATCHPARAMETER: Wrap<icalproperty_kind> { .init(ICAL_PATCHPARAMETER_PROPERTY) }
            /// ICAL_PATCHTARGET_PROPERTY
            case .PATCHTARGET: Wrap<icalproperty_kind> { .init(ICAL_PATCHTARGET_PROPERTY) }
            /// ICAL_PATCHVERSION_PROPERTY
            case .PATCHVERSION: Wrap<icalproperty_kind> { .init(ICAL_PATCHVERSION_PROPERTY) }
            /// ICAL_PERCENTCOMPLETE_PROPERTY
            case .PERCENTCOMPLETE: Wrap<icalproperty_kind> { .init(ICAL_PERCENTCOMPLETE_PROPERTY) }
            /// ICAL_PERMISSION_PROPERTY
            case .PERMISSION: Wrap<icalproperty_kind> { .init(ICAL_PERMISSION_PROPERTY) }
            /// ICAL_POLLCOMPLETION_PROPERTY
            case .POLLCOMPLETION: Wrap<icalproperty_kind> { .init(ICAL_POLLCOMPLETION_PROPERTY) }
            /// ICAL_POLLITEMID_PROPERTY
            case .POLLITEMID: Wrap<icalproperty_kind> { .init(ICAL_POLLITEMID_PROPERTY) }
            /// ICAL_POLLMODE_PROPERTY
            case .POLLMODE: Wrap<icalproperty_kind> { .init(ICAL_POLLMODE_PROPERTY) }
            /// ICAL_POLLPROPERTIES_PROPERTY
            case .POLLPROPERTIES: Wrap<icalproperty_kind> { .init(ICAL_POLLPROPERTIES_PROPERTY) }
            /// ICAL_POLLWINNER_PROPERTY
            case .POLLWINNER: Wrap<icalproperty_kind> { .init(ICAL_POLLWINNER_PROPERTY) }
            /// ICAL_PRIORITY_PROPERTY
            case .PRIORITY: Wrap<icalproperty_kind> { .init(ICAL_PRIORITY_PROPERTY) }
            /// ICAL_PRODID_PROPERTY
            case .PRODID: Wrap<icalproperty_kind> { .init(ICAL_PRODID_PROPERTY) }
            /// ICAL_QUERY_PROPERTY
            case .QUERY: Wrap<icalproperty_kind> { .init(ICAL_QUERY_PROPERTY) }
            /// ICAL_QUERYLEVEL_PROPERTY
            case .QUERYLEVEL: Wrap<icalproperty_kind> { .init(ICAL_QUERYLEVEL_PROPERTY) }
            /// ICAL_QUERYID_PROPERTY
            case .QUERYID: Wrap<icalproperty_kind> { .init(ICAL_QUERYID_PROPERTY) }
            /// ICAL_QUERYNAME_PROPERTY
            case .QUERYNAME: Wrap<icalproperty_kind> { .init(ICAL_QUERYNAME_PROPERTY) }
            /// ICAL_RDATE_PROPERTY
            case .RDATE: Wrap<icalproperty_kind> { .init(ICAL_RDATE_PROPERTY) }
            /// ICAL_RECURACCEPTED_PROPERTY
            case .RECURACCEPTED: Wrap<icalproperty_kind> { .init(ICAL_RECURACCEPTED_PROPERTY) }
            /// ICAL_RECUREXPAND_PROPERTY
            case .RECUREXPAND: Wrap<icalproperty_kind> { .init(ICAL_RECUREXPAND_PROPERTY) }
            /// ICAL_RECURLIMIT_PROPERTY
            case .RECURLIMIT: Wrap<icalproperty_kind> { .init(ICAL_RECURLIMIT_PROPERTY) }
            /// ICAL_RECURRENCEID_PROPERTY
            case .RECURRENCEID: Wrap<icalproperty_kind> { .init(ICAL_RECURRENCEID_PROPERTY) }
            /// ICAL_REFRESHINTERVAL_PROPERTY
            case .REFRESHINTERVAL: Wrap<icalproperty_kind> { .init(ICAL_REFRESHINTERVAL_PROPERTY) }
            /// ICAL_RELATEDTO_PROPERTY
            case .RELATEDTO: Wrap<icalproperty_kind> { .init(ICAL_RELATEDTO_PROPERTY) }
            /// ICAL_RELCALID_PROPERTY
            case .RELCALID: Wrap<icalproperty_kind> { .init(ICAL_RELCALID_PROPERTY) }
            /// ICAL_REPEAT_PROPERTY
            case .REPEAT: Wrap<icalproperty_kind> { .init(ICAL_REPEAT_PROPERTY) }
            /// ICAL_REPLYURL_PROPERTY
            case .REPLYURL: Wrap<icalproperty_kind> { .init(ICAL_REPLYURL_PROPERTY) }
            /// ICAL_REQUESTSTATUS_PROPERTY
            case .REQUESTSTATUS: Wrap<icalproperty_kind> { .init(ICAL_REQUESTSTATUS_PROPERTY) }
            /// ICAL_RESOURCES_PROPERTY
            case .RESOURCES: Wrap<icalproperty_kind> { .init(ICAL_RESOURCES_PROPERTY) }
            /// ICAL_RESPONSE_PROPERTY
            case .RESPONSE: Wrap<icalproperty_kind> { .init(ICAL_RESPONSE_PROPERTY) }
            /// ICAL_RESTRICTION_PROPERTY
            case .RESTRICTION: Wrap<icalproperty_kind> { .init(ICAL_RESTRICTION_PROPERTY) }
            /// ICAL_RRULE_PROPERTY
            case .RRULE: Wrap<icalproperty_kind> { .init(ICAL_RRULE_PROPERTY) }
            /// ICAL_SCOPE_PROPERTY
            case .SCOPE: Wrap<icalproperty_kind> { .init(ICAL_SCOPE_PROPERTY) }
            /// ICAL_SEQUENCE_PROPERTY
            case .SEQUENCE: Wrap<icalproperty_kind> { .init(ICAL_SEQUENCE_PROPERTY) }
            /// ICAL_SOURCE_PROPERTY
            case .SOURCE: Wrap<icalproperty_kind> { .init(ICAL_SOURCE_PROPERTY) }
            /// ICAL_STATUS_PROPERTY
            case .STATUS: Wrap<icalproperty_kind> { .init(ICAL_STATUS_PROPERTY) }
            /// ICAL_STORESEXPANDED_PROPERTY
            case .STORESEXPANDED: Wrap<icalproperty_kind> { .init(ICAL_STORESEXPANDED_PROPERTY) }
            /// ICAL_SUMMARY_PROPERTY
            case .SUMMARY: Wrap<icalproperty_kind> { .init(ICAL_SUMMARY_PROPERTY) }
            /// ICAL_TARGET_PROPERTY
            case .TARGET: Wrap<icalproperty_kind> { .init(ICAL_TARGET_PROPERTY) }
            /// ICAL_TASKMODE_PROPERTY
            case .TASKMODE: Wrap<icalproperty_kind> { .init(ICAL_TASKMODE_PROPERTY) }
            /// ICAL_TRANSP_PROPERTY
            case .TRANSP: Wrap<icalproperty_kind> { .init(ICAL_TRANSP_PROPERTY) }
            /// ICAL_TRIGGER_PROPERTY
            case .TRIGGER: Wrap<icalproperty_kind> { .init(ICAL_TRIGGER_PROPERTY) }
            /// ICAL_TZID_PROPERTY
            case .TZID: Wrap<icalproperty_kind> { .init(ICAL_TZID_PROPERTY) }
            /// ICAL_TZIDALIASOF_PROPERTY
            case .TZIDALIASOF: Wrap<icalproperty_kind> { .init(ICAL_TZIDALIASOF_PROPERTY) }
            /// ICAL_TZNAME_PROPERTY
            case .TZNAME: Wrap<icalproperty_kind> { .init(ICAL_TZNAME_PROPERTY) }
            /// ICAL_TZOFFSETFROM_PROPERTY
            case .TZOFFSETFROM: Wrap<icalproperty_kind> { .init(ICAL_TZOFFSETFROM_PROPERTY) }
            /// ICAL_TZOFFSETTO_PROPERTY
            case .TZOFFSETTO: Wrap<icalproperty_kind> { .init(ICAL_TZOFFSETTO_PROPERTY) }
            /// ICAL_TZUNTIL_PROPERTY
            case .TZUNTIL: Wrap<icalproperty_kind> { .init(ICAL_TZUNTIL_PROPERTY) }
            /// ICAL_TZURL_PROPERTY
            case .TZURL: Wrap<icalproperty_kind> { .init(ICAL_TZURL_PROPERTY) }
            /// ICAL_UID_PROPERTY
            case .UID: Wrap<icalproperty_kind> { .init(ICAL_UID_PROPERTY) }
            /// ICAL_URL_PROPERTY
            case .URL: Wrap<icalproperty_kind> { .init(ICAL_URL_PROPERTY) }
            /// ICAL_VERSION_PROPERTY
            case .VERSION: Wrap<icalproperty_kind> { .init(ICAL_VERSION_PROPERTY) }
            /// ICAL_VOTER_PROPERTY
            case .VOTER: Wrap<icalproperty_kind> { .init(ICAL_VOTER_PROPERTY) }
            /// ICAL_X_PROPERTY
            case .X: Wrap<icalproperty_kind> { .init(ICAL_X_PROPERTY) }
            /// ICAL_XLICCLASS_PROPERTY
            case .XLICCLASS: Wrap<icalproperty_kind> { .init(ICAL_XLICCLASS_PROPERTY) }
            /// ICAL_XLICCLUSTERCOUNT_PROPERTY
            case .XLICCLUSTERCOUNT: Wrap<icalproperty_kind> { .init(ICAL_XLICCLUSTERCOUNT_PROPERTY) }
            /// ICAL_XLICERROR_PROPERTY
            case .XLICERROR: Wrap<icalproperty_kind> { .init(ICAL_XLICERROR_PROPERTY) }
            /// ICAL_XLICMIMECHARSET_PROPERTY
            case .XLICMIMECHARSET: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMECHARSET_PROPERTY) }
            /// ICAL_XLICMIMECID_PROPERTY
            case .XLICMIMECID: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMECID_PROPERTY) }
            /// ICAL_XLICMIMECONTENTTYPE_PROPERTY
            case .XLICMIMECONTENTTYPE: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMECONTENTTYPE_PROPERTY) }
            /// ICAL_XLICMIMEENCODING_PROPERTY
            case .XLICMIMEENCODING: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMEENCODING_PROPERTY) }
            /// ICAL_XLICMIMEFILENAME_PROPERTY
            case .XLICMIMEFILENAME: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMEFILENAME_PROPERTY) }
            /// ICAL_XLICMIMEOPTINFO_PROPERTY
            case .XLICMIMEOPTINFO: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMEOPTINFO_PROPERTY) }
            /// ICAL_NO_PROPERTY
            case .NO: Wrap<icalproperty_kind> { .init(ICAL_NO_PROPERTY) }
        }
    }
}
