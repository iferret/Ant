//
//  Component+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical


// MARK: - Wrap<icalcomponent_kind>
extension Wrap<icalcomponent_kind> {
    
    /// ICAL_NO_COMPONENT
    public static var NO: Wrap<icalcomponent_kind> { .init(ICAL_NO_COMPONENT) }
    /// ICAL_ANY_COMPONENT
    public static var ANY: Wrap<icalcomponent_kind> { .init(ICAL_ANY_COMPONENT) }
    /// ICAL_XROOT_COMPONENT
    public static var XROOT: Wrap<icalcomponent_kind> { .init(ICAL_XROOT_COMPONENT) }
    /// ICAL_XATTACH_COMPONENT
    public static var XATTACH: Wrap<icalcomponent_kind> { .init(ICAL_XATTACH_COMPONENT) }
    /// ICAL_VEVENT_COMPONENT
    public static var VEVENT: Wrap<icalcomponent_kind> { .init(ICAL_VEVENT_COMPONENT) }
    /// ICAL_VTODO_COMPONENT
    public static var VTODO: Wrap<icalcomponent_kind> { .init(ICAL_VTODO_COMPONENT) }
    /// ICAL_VJOURNAL_COMPONENT
    public static var VJOURNAL: Wrap<icalcomponent_kind> { .init(ICAL_VJOURNAL_COMPONENT) }
    /// ICAL_VCALENDAR_COMPONENT
    public static var VCALENDAR: Wrap<icalcomponent_kind> { .init(ICAL_VCALENDAR_COMPONENT) }
    /// ICAL_VAGENDA_COMPONENT
    public static var VAGENDA: Wrap<icalcomponent_kind> { .init(ICAL_VAGENDA_COMPONENT) }
    /// ICAL_VFREEBUSY_COMPONENT
    public static var VFREEBUSY: Wrap<icalcomponent_kind> { .init(ICAL_VFREEBUSY_COMPONENT) }
    /// ICAL_VALARM_COMPONENT
    public static var VALARM: Wrap<icalcomponent_kind> { .init(ICAL_VALARM_COMPONENT) }
    /// ICAL_XAUDIOALARM_COMPONENT
    public static var XAUDIOALARM: Wrap<icalcomponent_kind> { .init(ICAL_XAUDIOALARM_COMPONENT) }
    /// ICAL_XDISPLAYALARM_COMPONENT
    public static var XDISPLAYALARM: Wrap<icalcomponent_kind> { .init(ICAL_XDISPLAYALARM_COMPONENT) }
    /// ICAL_XEMAILALARM_COMPONENT
    public static var XEMAILALARM: Wrap<icalcomponent_kind> { .init(ICAL_XEMAILALARM_COMPONENT) }
    /// ICAL_XPROCEDUREALARM_COMPONENT
    public static var XPROCEDUREALARM: Wrap<icalcomponent_kind> { .init(ICAL_XPROCEDUREALARM_COMPONENT) }
    /// ICAL_VTIMEZONE_COMPONENT
    public static var VTIMEZONE: Wrap<icalcomponent_kind> { .init(ICAL_VTIMEZONE_COMPONENT) }
    /// ICAL_XSTANDARD_COMPONENT
    public static var XSTANDARD: Wrap<icalcomponent_kind> { .init(ICAL_XSTANDARD_COMPONENT) }
    /// ICAL_XDAYLIGHT_COMPONENT
    public static var XDAYLIGHT: Wrap<icalcomponent_kind> { .init(ICAL_XDAYLIGHT_COMPONENT) }
    /// ICAL_X_COMPONENT
    public static var X: Wrap<icalcomponent_kind> { .init(ICAL_X_COMPONENT) }
    /// ICAL_VSCHEDULE_COMPONENT
    public static var VSCHEDULE: Wrap<icalcomponent_kind> { .init(ICAL_VSCHEDULE_COMPONENT) }
    /// ICAL_VQUERY_COMPONENT
    public static var VQUERY: Wrap<icalcomponent_kind> { .init(ICAL_VQUERY_COMPONENT) }
    /// ICAL_VREPLY_COMPONENT
    public static var VREPLY: Wrap<icalcomponent_kind> { .init(ICAL_VREPLY_COMPONENT) }
    /// ICAL_VCAR_COMPONENT
    public static var VCAR: Wrap<icalcomponent_kind> { .init(ICAL_VCAR_COMPONENT) }
    /// ICAL_VCOMMAND_COMPONENT
    public static var VCOMMAND: Wrap<icalcomponent_kind> { .init(ICAL_VCOMMAND_COMPONENT) }
    /// ICAL_XLICINVALID_COMPONENT
    public static var XLICINVALID: Wrap<icalcomponent_kind> { .init(ICAL_XLICINVALID_COMPONENT) }
    /// ICAL_XLICMIMEPART_COMPONENT
    public static var XLICMIMEPART: Wrap<icalcomponent_kind> { .init(ICAL_XLICMIMEPART_COMPONENT) }
    /// ICAL_VAVAILABILITY_COMPONENT
    public static var VAVAILABILITY: Wrap<icalcomponent_kind> { .init(ICAL_VAVAILABILITY_COMPONENT) }
    /// ICAL_XAVAILABLE_COMPONENT
    public static var XAVAILABLE: Wrap<icalcomponent_kind> { .init(ICAL_XAVAILABLE_COMPONENT) }
    /// ICAL_VPOLL_COMPONENT
    public static var VPOLL: Wrap<icalcomponent_kind> { .init(ICAL_VPOLL_COMPONENT) }
    /// ICAL_VVOTER_COMPONENT
    public static var VVOTER: Wrap<icalcomponent_kind> { .init(ICAL_VVOTER_COMPONENT) }
    /// ICAL_XVOTE_COMPONENT
    public static var XVOTE: Wrap<icalcomponent_kind> { .init(ICAL_XVOTE_COMPONENT) }
    /// ICAL_VPATCH_COMPONENT
    public static var VPATCH: Wrap<icalcomponent_kind> { .init(ICAL_VPATCH_COMPONENT) }
    /// ICAL_XPATCH_COMPONENT
    public static var XPATCH: Wrap<icalcomponent_kind> { .init(ICAL_XPATCH_COMPONENT) }
    
    /// [Wrap<icalcomponent_kind>]
    public static var allCases: [Wrap<icalcomponent_kind>] {
        return [NO, ANY, XROOT, XATTACH, VEVENT, VTODO, VJOURNAL, VCALENDAR, VAGENDA, VFREEBUSY, VALARM, XAUDIOALARM, XDISPLAYALARM, XEMAILALARM,
                XPROCEDUREALARM, VTIMEZONE, XSTANDARD, XDAYLIGHT, X, VSCHEDULE, VQUERY, VREPLY, VCAR, VCOMMAND, XLICINVALID, XLICMIMEPART,
                VAVAILABILITY, XAVAILABLE, VPOLL, VVOTER, XVOTE, VPATCH, XPATCH]
    }

}
