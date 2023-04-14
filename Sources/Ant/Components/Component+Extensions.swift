//
//  Component+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

extension Component {
    /// Wrap<icalcomponent_kind>
    public typealias Kind = Wrap<icalcomponent_kind>
}

// MARK: - Wrap<icalcomponent_kind>
extension Component.Kind {
    /// ICAL_NO_COMPONENT
    public static var NO: Component.Kind { .init(ICAL_NO_COMPONENT) }
    /// ICAL_ANY_COMPONENT
    public static var ANY: Component.Kind { .init(ICAL_ANY_COMPONENT) }
    /// ICAL_XROOT_COMPONENT
    public static var XROOT: Component.Kind { .init(ICAL_XROOT_COMPONENT) }
    /// ICAL_XATTACH_COMPONENT
    public static var XATTACH: Component.Kind { .init(ICAL_XATTACH_COMPONENT) }
    /// ICAL_VEVENT_COMPONENT
    public static var VEVENT: Component.Kind { .init(ICAL_VEVENT_COMPONENT) }
    /// ICAL_VTODO_COMPONENT
    public static var VTODO: Component.Kind { .init(ICAL_VTODO_COMPONENT) }
    /// ICAL_VJOURNAL_COMPONENT
    public static var VJOURNAL: Component.Kind { .init(ICAL_VJOURNAL_COMPONENT) }
    /// ICAL_VCALENDAR_COMPONENT
    public static var VCALENDAR: Component.Kind { .init(ICAL_VCALENDAR_COMPONENT) }
    /// ICAL_VAGENDA_COMPONENT
    public static var VAGENDA: Component.Kind { .init(ICAL_VAGENDA_COMPONENT) }
    /// ICAL_VFREEBUSY_COMPONENT
    public static var VFREEBUSY: Component.Kind { .init(ICAL_VFREEBUSY_COMPONENT) }
    /// ICAL_VALARM_COMPONENT
    public static var VALARM: Component.Kind { .init(ICAL_VALARM_COMPONENT) }
    /// ICAL_XAUDIOALARM_COMPONENT
    public static var XAUDIOALARM: Component.Kind { .init(ICAL_XAUDIOALARM_COMPONENT) }
    /// ICAL_XDISPLAYALARM_COMPONENT
    public static var XDISPLAYALARM: Component.Kind { .init(ICAL_XDISPLAYALARM_COMPONENT) }
    /// ICAL_XEMAILALARM_COMPONENT
    public static var XEMAILALARM: Component.Kind { .init(ICAL_XEMAILALARM_COMPONENT) }
    /// ICAL_XPROCEDUREALARM_COMPONENT
    public static var XPROCEDUREALARM: Component.Kind { .init(ICAL_XPROCEDUREALARM_COMPONENT) }
    /// ICAL_VTIMEZONE_COMPONENT
    public static var VTIMEZONE: Component.Kind { .init(ICAL_VTIMEZONE_COMPONENT) }
    /// ICAL_XSTANDARD_COMPONENT
    public static var XSTANDARD: Component.Kind { .init(ICAL_XSTANDARD_COMPONENT) }
    /// ICAL_XDAYLIGHT_COMPONENT
    public static var XDAYLIGHT: Component.Kind { .init(ICAL_XDAYLIGHT_COMPONENT) }
    /// ICAL_X_COMPONENT
    public static var X: Component.Kind { .init(ICAL_X_COMPONENT) }
    /// ICAL_VSCHEDULE_COMPONENT
    public static var VSCHEDULE: Component.Kind { .init(ICAL_VSCHEDULE_COMPONENT) }
    /// ICAL_VQUERY_COMPONENT
    public static var VQUERY: Component.Kind { .init(ICAL_VQUERY_COMPONENT) }
    /// ICAL_VREPLY_COMPONENT
    public static var VREPLY: Component.Kind { .init(ICAL_VREPLY_COMPONENT) }
    /// ICAL_VCAR_COMPONENT
    public static var VCAR: Component.Kind { .init(ICAL_VCAR_COMPONENT) }
    /// ICAL_VCOMMAND_COMPONENT
    public static var VCOMMAND: Component.Kind { .init(ICAL_VCOMMAND_COMPONENT) }
    /// ICAL_XLICINVALID_COMPONENT
    public static var XLICINVALID: Component.Kind { .init(ICAL_XLICINVALID_COMPONENT) }
    /// ICAL_XLICMIMEPART_COMPONENT
    public static var XLICMIMEPART: Component.Kind { .init(ICAL_XLICMIMEPART_COMPONENT) }
    /// ICAL_VAVAILABILITY_COMPONENT
    public static var VAVAILABILITY: Component.Kind { .init(ICAL_VAVAILABILITY_COMPONENT) }
    /// ICAL_XAVAILABLE_COMPONENT
    public static var XAVAILABLE: Component.Kind { .init(ICAL_XAVAILABLE_COMPONENT) }
    /// ICAL_VPOLL_COMPONENT
    public static var VPOLL: Component.Kind { .init(ICAL_VPOLL_COMPONENT) }
    /// ICAL_VVOTER_COMPONENT
    public static var VVOTER: Component.Kind { .init(ICAL_VVOTER_COMPONENT) }
    /// ICAL_XVOTE_COMPONENT
    public static var XVOTE: Component.Kind { .init(ICAL_XVOTE_COMPONENT) }
    /// ICAL_VPATCH_COMPONENT
    public static var VPATCH: Component.Kind { .init(ICAL_VPATCH_COMPONENT) }
    /// ICAL_XPATCH_COMPONENT
    public static var XPATCH: Component.Kind { .init(ICAL_XPATCH_COMPONENT) }
    /// [Component.Kind]
    public static var allCases: [Component.Kind] {
        return [NO, ANY, XROOT, XATTACH, VEVENT, VTODO, VJOURNAL, VCALENDAR, VAGENDA, VFREEBUSY, VALARM, XAUDIOALARM, XDISPLAYALARM, XEMAILALARM, XPROCEDUREALARM, VTIMEZONE, XSTANDARD, XDAYLIGHT, X, VSCHEDULE, VQUERY, VREPLY, VCAR, VCOMMAND, XLICINVALID, XLICMIMEPART, VAVAILABILITY, XAVAILABLE, VPOLL, VVOTER, XVOTE, VPATCH, XPATCH]
    }

}
