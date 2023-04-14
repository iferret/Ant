//
//  Value+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

extension Value {
    /// Wrap<icalvalue_kind>
    public typealias Kind = Wrap<icalvalue_kind>
}

// MARK: - Wrap<icalvalue_kind>
extension Value.Kind {
    /// ICAL_ANY_VALUE
    public static var ANY: Value.Kind { .init(ICAL_ANY_VALUE) }
    /// ICAL_ACTION_VALUE
    public static var ACTION: Value.Kind { .init(ICAL_ACTION_VALUE) }
    /// ICAL_ATTACH_VALUE
    public static var ATTACH: Value.Kind { .init(ICAL_ATTACH_VALUE) }
    /// ICAL_BINARY_VALUE
    public static var BINARY: Value.Kind { .init(ICAL_BINARY_VALUE) }
    /// ICAL_BOOLEAN_VALUE
    public static var BOOLEAN: Value.Kind { .init(ICAL_BOOLEAN_VALUE) }
    /// ICAL_BUSYTYPE_VALUE
    public static var BUSYTYPE: Value.Kind { .init(ICAL_BUSYTYPE_VALUE) }
    /// ICAL_CALADDRESS_VALUE
    public static var CALADDRESS: Value.Kind { .init(ICAL_CALADDRESS_VALUE) }
    /// ICAL_CARLEVEL_VALUE
    public static var CARLEVEL: Value.Kind { .init(ICAL_CARLEVEL_VALUE) }
    /// ICAL_CLASS_VALUE
    public static var CLASS: Value.Kind { .init(ICAL_CLASS_VALUE) }
    /// ICAL_CMD_VALUE
    public static var CMD: Value.Kind { .init(ICAL_CMD_VALUE) }
    /// ICAL_DATE_VALUE
    public static var DATE: Value.Kind { .init(ICAL_DATE_VALUE) }
    /// ICAL_DATETIME_VALUE
    public static var DATETIME: Value.Kind { .init(ICAL_DATETIME_VALUE) }
    /// ICAL_DATETIMEDATE_VALUE
    public static var DATETIMEDATE: Value.Kind { .init(ICAL_DATETIMEDATE_VALUE) }
    /// ICAL_DATETIMEPERIOD_VALUE
    public static var DATETIMEPERIOD: Value.Kind { .init(ICAL_DATETIMEPERIOD_VALUE) }
    /// ICAL_DURATION_VALUE
    public static var DURATION: Value.Kind { .init(ICAL_DURATION_VALUE) }
    /// ICAL_FLOAT_VALUE
    public static var FLOAT: Value.Kind { .init(ICAL_FLOAT_VALUE) }
    /// ICAL_GEO_VALUE
    public static var GEO: Value.Kind { .init(ICAL_GEO_VALUE) }
    /// ICAL_INTEGER_VALUE
    public static var INTEGER: Value.Kind { .init(ICAL_INTEGER_VALUE) }
    /// ICAL_METHOD_VALUE
    public static var METHOD: Value.Kind { .init(ICAL_METHOD_VALUE) }
    /// ICAL_PERIOD_VALUE
    public static var PERIOD: Value.Kind { .init(ICAL_PERIOD_VALUE) }
    /// ICAL_POLLCOMPLETION_VALUE
    public static var POLLCOMPLETION: Value.Kind { .init(ICAL_POLLCOMPLETION_VALUE) }
    /// ICAL_POLLMODE_VALUE
    public static var POLLMODE: Value.Kind { .init(ICAL_POLLMODE_VALUE) }
    /// ICAL_QUERY_VALUE
    public static var QUERY: Value.Kind { .init(ICAL_QUERY_VALUE) }
    /// ICAL_QUERYLEVEL_VALUE
    public static var QUERYLEVEL: Value.Kind { .init(ICAL_QUERYLEVEL_VALUE) }
    /// ICAL_RECUR_VALUE
    public static var RECUR: Value.Kind { .init(ICAL_RECUR_VALUE) }
    /// ICAL_REQUESTSTATUS_VALUE
    public static var REQUESTSTATUS: Value.Kind { .init(ICAL_REQUESTSTATUS_VALUE) }
    /// ICAL_STATUS_VALUE
    public static var STATUS: Value.Kind { .init(ICAL_STATUS_VALUE) }
    /// ICAL_STRING_VALUE
    public static var STRING: Value.Kind { .init(ICAL_STRING_VALUE) }
    /// ICAL_TASKMODE_VALUE
    public static var TASKMODE: Value.Kind { .init(ICAL_TASKMODE_VALUE) }
    /// ICAL_TEXT_VALUE
    public static var TEXT: Value.Kind { .init(ICAL_TEXT_VALUE) }
    /// ICAL_TRANSP_VALUE
    public static var TRANSP: Value.Kind { .init(ICAL_TRANSP_VALUE) }
    /// ICAL_TRIGGER_VALUE
    public static var TRIGGER: Value.Kind { .init(ICAL_TRIGGER_VALUE) }
    /// ICAL_URI_VALUE
    public static var URI: Value.Kind { .init(ICAL_URI_VALUE) }
    /// ICAL_UTCOFFSET_VALUE
    public static var UTCOFFSET: Value.Kind { .init(ICAL_UTCOFFSET_VALUE) }
    /// ICAL_X_VALUE
    public static var X: Value.Kind { .init(ICAL_X_VALUE) }
    /// ICAL_XLICCLASS_VALUE
    public static var XLICCLASS: Value.Kind { .init(ICAL_XLICCLASS_VALUE) }
    /// ICAL_NO_VALUE
    public static var NO: Value.Kind { .init(ICAL_NO_VALUE) }
    /// [Value.Kind]
    public static var allCases: [Value.Kind] {
        return [ANY, ACTION, ATTACH, BINARY, BOOLEAN, BUSYTYPE, CALADDRESS, CARLEVEL, CLASS, CMD, DATE, DATETIME, DATETIMEDATE, DATETIMEPERIOD, DURATION, FLOAT, GEO, INTEGER, METHOD, PERIOD, POLLCOMPLETION, POLLMODE, QUERY, QUERYLEVEL, RECUR, REQUESTSTATUS, STATUS, STRING, TASKMODE, TEXT, TRANSP, TRIGGER, URI, UTCOFFSET, X, XLICCLASS, NO]
    }
    
}
