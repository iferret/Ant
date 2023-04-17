//
//  Value+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

// MARK: - Wrap<icalvalue_kind>
extension Wrap<icalvalue_kind> {
    
    /// ICAL_ANY_VALUE
    public static var ANY: Wrap<icalvalue_kind> { .init(ICAL_ANY_VALUE) }
    /// ICAL_ACTION_VALUE
    public static var ACTION: Wrap<icalvalue_kind> { .init(ICAL_ACTION_VALUE) }
    /// ICAL_ATTACH_VALUE
    public static var ATTACH: Wrap<icalvalue_kind> { .init(ICAL_ATTACH_VALUE) }
    /// ICAL_BINARY_VALUE
    public static var BINARY: Wrap<icalvalue_kind> { .init(ICAL_BINARY_VALUE) }
    /// ICAL_BOOLEAN_VALUE
    public static var BOOLEAN: Wrap<icalvalue_kind> { .init(ICAL_BOOLEAN_VALUE) }
    /// ICAL_BUSYTYPE_VALUE
    public static var BUSYTYPE: Wrap<icalvalue_kind> { .init(ICAL_BUSYTYPE_VALUE) }
    /// ICAL_CALADDRESS_VALUE
    public static var CALADDRESS: Wrap<icalvalue_kind> { .init(ICAL_CALADDRESS_VALUE) }
    /// ICAL_CARLEVEL_VALUE
    public static var CARLEVEL: Wrap<icalvalue_kind> { .init(ICAL_CARLEVEL_VALUE) }
    /// ICAL_CLASS_VALUE
    public static var CLASS: Wrap<icalvalue_kind> { .init(ICAL_CLASS_VALUE) }
    /// ICAL_CMD_VALUE
    public static var CMD: Wrap<icalvalue_kind> { .init(ICAL_CMD_VALUE) }
    /// ICAL_DATE_VALUE
    public static var DATE: Wrap<icalvalue_kind> { .init(ICAL_DATE_VALUE) }
    /// ICAL_DATETIME_VALUE
    public static var DATETIME: Wrap<icalvalue_kind> { .init(ICAL_DATETIME_VALUE) }
    /// ICAL_DATETIMEDATE_VALUE
    public static var DATETIMEDATE: Wrap<icalvalue_kind> { .init(ICAL_DATETIMEDATE_VALUE) }
    /// ICAL_DATETIMEPERIOD_VALUE
    public static var DATETIMEPERIOD: Wrap<icalvalue_kind> { .init(ICAL_DATETIMEPERIOD_VALUE) }
    /// ICAL_DURATION_VALUE
    public static var DURATION: Wrap<icalvalue_kind> { .init(ICAL_DURATION_VALUE) }
    /// ICAL_FLOAT_VALUE
    public static var FLOAT: Wrap<icalvalue_kind> { .init(ICAL_FLOAT_VALUE) }
    /// ICAL_GEO_VALUE
    public static var GEO: Wrap<icalvalue_kind> { .init(ICAL_GEO_VALUE) }
    /// ICAL_INTEGER_VALUE
    public static var INTEGER: Wrap<icalvalue_kind> { .init(ICAL_INTEGER_VALUE) }
    /// ICAL_METHOD_VALUE
    public static var METHOD: Wrap<icalvalue_kind> { .init(ICAL_METHOD_VALUE) }
    /// ICAL_PERIOD_VALUE
    public static var PERIOD: Wrap<icalvalue_kind> { .init(ICAL_PERIOD_VALUE) }
    /// ICAL_POLLCOMPLETION_VALUE
    public static var POLLCOMPLETION: Wrap<icalvalue_kind> { .init(ICAL_POLLCOMPLETION_VALUE) }
    /// ICAL_POLLMODE_VALUE
    public static var POLLMODE: Wrap<icalvalue_kind> { .init(ICAL_POLLMODE_VALUE) }
    /// ICAL_QUERY_VALUE
    public static var QUERY: Wrap<icalvalue_kind> { .init(ICAL_QUERY_VALUE) }
    /// ICAL_QUERYLEVEL_VALUE
    public static var QUERYLEVEL: Wrap<icalvalue_kind> { .init(ICAL_QUERYLEVEL_VALUE) }
    /// ICAL_RECUR_VALUE
    public static var RECUR: Wrap<icalvalue_kind> { .init(ICAL_RECUR_VALUE) }
    /// ICAL_REQUESTSTATUS_VALUE
    public static var REQUESTSTATUS: Wrap<icalvalue_kind> { .init(ICAL_REQUESTSTATUS_VALUE) }
    /// ICAL_STATUS_VALUE
    public static var STATUS: Wrap<icalvalue_kind> { .init(ICAL_STATUS_VALUE) }
    /// ICAL_STRING_VALUE
    public static var STRING: Wrap<icalvalue_kind> { .init(ICAL_STRING_VALUE) }
    /// ICAL_TASKMODE_VALUE
    public static var TASKMODE: Wrap<icalvalue_kind> { .init(ICAL_TASKMODE_VALUE) }
    /// ICAL_TEXT_VALUE
    public static var TEXT: Wrap<icalvalue_kind> { .init(ICAL_TEXT_VALUE) }
    /// ICAL_TRANSP_VALUE
    public static var TRANSP: Wrap<icalvalue_kind> { .init(ICAL_TRANSP_VALUE) }
    /// ICAL_TRIGGER_VALUE
    public static var TRIGGER: Wrap<icalvalue_kind> { .init(ICAL_TRIGGER_VALUE) }
    /// ICAL_URI_VALUE
    public static var URI: Wrap<icalvalue_kind> { .init(ICAL_URI_VALUE) }
    /// ICAL_UTCOFFSET_VALUE
    public static var UTCOFFSET: Wrap<icalvalue_kind> { .init(ICAL_UTCOFFSET_VALUE) }
    /// ICAL_X_VALUE
    public static var X: Wrap<icalvalue_kind> { .init(ICAL_X_VALUE) }
    /// ICAL_XLICCLASS_VALUE
    public static var XLICCLASS: Wrap<icalvalue_kind> { .init(ICAL_XLICCLASS_VALUE) }
    /// ICAL_NO_VALUE
    public static var NO: Wrap<icalvalue_kind> { .init(ICAL_NO_VALUE) }
    
    /// [Wrap<icalvalue_kind>]
    public static var allCases: [Wrap<icalvalue_kind>] {
        return [ANY, ACTION, ATTACH, BINARY, BOOLEAN, BUSYTYPE, CALADDRESS, CARLEVEL, CLASS, CMD, DATE, DATETIME, DATETIMEDATE, DATETIMEPERIOD,
                DURATION, FLOAT, GEO, INTEGER, METHOD, PERIOD, POLLCOMPLETION, POLLMODE, QUERY, QUERYLEVEL, RECUR, REQUESTSTATUS, STATUS, STRING,
                TASKMODE, TEXT, TRANSP, TRIGGER, URI, UTCOFFSET, X, XLICCLASS, NO]
    }
    
}
