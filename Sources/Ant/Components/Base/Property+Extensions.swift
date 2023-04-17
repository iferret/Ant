//
//  Property+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

// MARK: - Wrap<icalproperty_cmd>
extension Wrap<icalproperty_cmd> {
    
    /// ICAL_CMD_X
    public static var X: Wrap<icalproperty_cmd> { .init(ICAL_CMD_X) }
    /// ICAL_CMD_ABORT
    public static var ABORT: Wrap<icalproperty_cmd> { .init(ICAL_CMD_ABORT) }
    /// ICAL_CMD_CONTINUE
    public static var CONTINUE: Wrap<icalproperty_cmd> { .init(ICAL_CMD_CONTINUE) }
    /// ICAL_CMD_CREATE
    public static var CREATE: Wrap<icalproperty_cmd> { .init(ICAL_CMD_CREATE) }
    /// ICAL_CMD_DELETE
    public static var DELETE: Wrap<icalproperty_cmd> { .init(ICAL_CMD_DELETE) }
    /// ICAL_CMD_GENERATEUID
    public static var GENERATEUID: Wrap<icalproperty_cmd> { .init(ICAL_CMD_GENERATEUID) }
    /// ICAL_CMD_GETCAPABILITY
    public static var GETCAPABILITY: Wrap<icalproperty_cmd> { .init(ICAL_CMD_GETCAPABILITY) }
    /// ICAL_CMD_IDENTIFY
    public static var IDENTIFY: Wrap<icalproperty_cmd> { .init(ICAL_CMD_IDENTIFY) }
    /// ICAL_CMD_MODIFY
    public static var MODIFY: Wrap<icalproperty_cmd> { .init(ICAL_CMD_MODIFY) }
    /// ICAL_CMD_MOVE
    public static var MOVE: Wrap<icalproperty_cmd> { .init(ICAL_CMD_MOVE) }
    /// ICAL_CMD_REPLY
    public static var REPLY: Wrap<icalproperty_cmd> { .init(ICAL_CMD_REPLY) }
    /// ICAL_CMD_SEARCH
    public static var SEARCH: Wrap<icalproperty_cmd> { .init(ICAL_CMD_SEARCH) }
    /// ICAL_CMD_SETLOCALE
    public static var SETLOCALE: Wrap<icalproperty_cmd> { .init(ICAL_CMD_SETLOCALE) }
    /// ICAL_CMD_NONE
    public static var NONE: Wrap<icalproperty_cmd> { .init(ICAL_CMD_NONE) }
    
    /// [Property.Comand]
    public static var allCases: [Wrap<icalproperty_cmd>] {
        return [X, ABORT, CONTINUE, CREATE, DELETE, GENERATEUID, GETCAPABILITY, IDENTIFY, MODIFY, MOVE, REPLY, SEARCH, SETLOCALE, NONE]
    }
}

// MARK: - Wrap<icalproperty_kind>
extension Wrap<icalproperty_kind> {
    
    /// ICAL_ANY_PROPERTY
    public static var ANY: Wrap<icalproperty_kind> { .init(ICAL_ANY_PROPERTY) }
    /// ICAL_ACCEPTRESPONSE_PROPERTY
    public static var ACCEPTRESPONSE: Wrap<icalproperty_kind> { .init(ICAL_ACCEPTRESPONSE_PROPERTY) }
    /// ICAL_ACKNOWLEDGED_PROPERTY
    public static var ACKNOWLEDGED: Wrap<icalproperty_kind> { .init(ICAL_ACKNOWLEDGED_PROPERTY) }
    /// ICAL_ACTION_PROPERTY
    public static var ACTION: Wrap<icalproperty_kind> { .init(ICAL_ACTION_PROPERTY) }
    /// ICAL_ALLOWCONFLICT_PROPERTY
    public static var ALLOWCONFLICT: Wrap<icalproperty_kind> { .init(ICAL_ALLOWCONFLICT_PROPERTY) }
    /// ICAL_ATTACH_PROPERTY
    public static var ATTACH: Wrap<icalproperty_kind> { .init(ICAL_ATTACH_PROPERTY) }
    /// ICAL_ATTENDEE_PROPERTY
    public static var ATTENDEE: Wrap<icalproperty_kind> { .init(ICAL_ATTENDEE_PROPERTY) }
    /// ICAL_BUSYTYPE_PROPERTY
    public static var BUSYTYPE: Wrap<icalproperty_kind> { .init(ICAL_BUSYTYPE_PROPERTY) }
    /// ICAL_CALID_PROPERTY
    public static var CALID: Wrap<icalproperty_kind> { .init(ICAL_CALID_PROPERTY) }
    /// ICAL_CALMASTER_PROPERTY
    public static var CALMASTER: Wrap<icalproperty_kind> { .init(ICAL_CALMASTER_PROPERTY) }
    /// ICAL_CALSCALE_PROPERTY
    public static var CALSCALE: Wrap<icalproperty_kind> { .init(ICAL_CALSCALE_PROPERTY) }
    /// ICAL_CAPVERSION_PROPERTY
    public static var CAPVERSION: Wrap<icalproperty_kind> { .init(ICAL_CAPVERSION_PROPERTY) }
    /// ICAL_CARLEVEL_PROPERTY
    public static var CARLEVEL: Wrap<icalproperty_kind> { .init(ICAL_CARLEVEL_PROPERTY) }
    /// ICAL_CARID_PROPERTY
    public static var CARID: Wrap<icalproperty_kind> { .init(ICAL_CARID_PROPERTY) }
    /// ICAL_CATEGORIES_PROPERTY
    public static var CATEGORIES: Wrap<icalproperty_kind> { .init(ICAL_CATEGORIES_PROPERTY) }
    /// ICAL_CLASS_PROPERTY
    public static var CLASS: Wrap<icalproperty_kind> { .init(ICAL_CLASS_PROPERTY) }
    /// ICAL_CMD_PROPERTY
    public static var CMD: Wrap<icalproperty_kind> { .init(ICAL_CMD_PROPERTY) }
    /// ICAL_COLOR_PROPERTY
    public static var COLOR: Wrap<icalproperty_kind> { .init(ICAL_COLOR_PROPERTY) }
    /// ICAL_COMMENT_PROPERTY
    public static var COMMENT: Wrap<icalproperty_kind> { .init(ICAL_COMMENT_PROPERTY) }
    /// ICAL_COMPLETED_PROPERTY
    public static var COMPLETED: Wrap<icalproperty_kind> { .init(ICAL_COMPLETED_PROPERTY) }
    /// ICAL_COMPONENTS_PROPERTY
    public static var COMPONENTS: Wrap<icalproperty_kind> { .init(ICAL_COMPONENTS_PROPERTY) }
    /// ICAL_CONFERENCE_PROPERTY
    public static var CONFERENCE: Wrap<icalproperty_kind> { .init(ICAL_CONFERENCE_PROPERTY) }
    /// ICAL_CONTACT_PROPERTY
    public static var CONTACT: Wrap<icalproperty_kind> { .init(ICAL_CONTACT_PROPERTY) }
    /// ICAL_CREATED_PROPERTY
    public static var CREATED: Wrap<icalproperty_kind> { .init(ICAL_CREATED_PROPERTY) }
    /// ICAL_CSID_PROPERTY
    public static var CSID: Wrap<icalproperty_kind> { .init(ICAL_CSID_PROPERTY) }
    /// ICAL_DATEMAX_PROPERTY
    public static var DATEMAX: Wrap<icalproperty_kind> { .init(ICAL_DATEMAX_PROPERTY) }
    /// ICAL_DATEMIN_PROPERTY
    public static var DATEMIN: Wrap<icalproperty_kind> { .init(ICAL_DATEMIN_PROPERTY) }
    /// ICAL_DECREED_PROPERTY
    public static var DECREED: Wrap<icalproperty_kind> { .init(ICAL_DECREED_PROPERTY) }
    /// ICAL_DEFAULTCHARSET_PROPERTY
    public static var DEFAULTCHARSET: Wrap<icalproperty_kind> { .init(ICAL_DEFAULTCHARSET_PROPERTY) }
    /// ICAL_DEFAULTLOCALE_PROPERTY
    public static var DEFAULTLOCALE: Wrap<icalproperty_kind> { .init(ICAL_DEFAULTLOCALE_PROPERTY) }
    /// ICAL_DEFAULTTZID_PROPERTY
    public static var DEFAULTTZID: Wrap<icalproperty_kind> { .init(ICAL_DEFAULTTZID_PROPERTY) }
    /// ICAL_DEFAULTVCARS_PROPERTY
    public static var DEFAULTVCARS: Wrap<icalproperty_kind> { .init(ICAL_DEFAULTVCARS_PROPERTY) }
    /// ICAL_DENY_PROPERTY
    public static var DENY: Wrap<icalproperty_kind> { .init(ICAL_DENY_PROPERTY) }
    /// ICAL_DESCRIPTION_PROPERTY
    public static var DESCRIPTION: Wrap<icalproperty_kind> { .init(ICAL_DESCRIPTION_PROPERTY) }
    /// ICAL_DTEND_PROPERTY
    public static var DTEND: Wrap<icalproperty_kind> { .init(ICAL_DTEND_PROPERTY) }
    /// ICAL_DTSTAMP_PROPERTY
    public static var DTSTAMP: Wrap<icalproperty_kind> { .init(ICAL_DTSTAMP_PROPERTY) }
    /// ICAL_DTSTART_PROPERTY
    public static var DTSTART: Wrap<icalproperty_kind> { .init(ICAL_DTSTART_PROPERTY) }
    /// ICAL_DUE_PROPERTY
    public static var DUE: Wrap<icalproperty_kind> { .init(ICAL_DUE_PROPERTY) }
    /// ICAL_DURATION_PROPERTY
    public static var DURATION: Wrap<icalproperty_kind> { .init(ICAL_DURATION_PROPERTY) }
    /// ICAL_ESTIMATEDDURATION_PROPERTY
    public static var ESTIMATEDDURATION: Wrap<icalproperty_kind> { .init(ICAL_ESTIMATEDDURATION_PROPERTY) }
    /// ICAL_EXDATE_PROPERTY
    public static var EXDATE: Wrap<icalproperty_kind> { .init(ICAL_EXDATE_PROPERTY) }
    /// ICAL_EXPAND_PROPERTY
    public static var EXPAND: Wrap<icalproperty_kind> { .init(ICAL_EXPAND_PROPERTY) }
    /// ICAL_EXRULE_PROPERTY
    public static var EXRULE: Wrap<icalproperty_kind> { .init(ICAL_EXRULE_PROPERTY) }
    /// ICAL_FREEBUSY_PROPERTY
    public static var FREEBUSY: Wrap<icalproperty_kind> { .init(ICAL_FREEBUSY_PROPERTY) }
    /// ICAL_GEO_PROPERTY
    public static var GEO: Wrap<icalproperty_kind> { .init(ICAL_GEO_PROPERTY) }
    /// ICAL_GRANT_PROPERTY
    public static var GRANT: Wrap<icalproperty_kind> { .init(ICAL_GRANT_PROPERTY) }
    /// ICAL_IMAGE_PROPERTY
    public static var IMAGE: Wrap<icalproperty_kind> { .init(ICAL_IMAGE_PROPERTY) }
    /// ICAL_ITIPVERSION_PROPERTY
    public static var ITIPVERSION: Wrap<icalproperty_kind> { .init(ICAL_ITIPVERSION_PROPERTY) }
    /// ICAL_LASTMODIFIED_PROPERTY
    public static var LASTMODIFIED: Wrap<icalproperty_kind> { .init(ICAL_LASTMODIFIED_PROPERTY) }
    /// ICAL_LOCATION_PROPERTY
    public static var LOCATION: Wrap<icalproperty_kind> { .init(ICAL_LOCATION_PROPERTY) }
    /// ICAL_MAXCOMPONENTSIZE_PROPERTY
    public static var MAXCOMPONENTSIZE: Wrap<icalproperty_kind> { .init(ICAL_MAXCOMPONENTSIZE_PROPERTY) }
    /// ICAL_MAXDATE_PROPERTY
    public static var MAXDATE: Wrap<icalproperty_kind> { .init(ICAL_MAXDATE_PROPERTY) }
    /// ICAL_MAXRESULTS_PROPERTY
    public static var MAXRESULTS: Wrap<icalproperty_kind> { .init(ICAL_MAXRESULTS_PROPERTY) }
    /// ICAL_MAXRESULTSSIZE_PROPERTY
    public static var MAXRESULTSSIZE: Wrap<icalproperty_kind> { .init(ICAL_MAXRESULTSSIZE_PROPERTY) }
    /// ICAL_METHOD_PROPERTY
    public static var METHOD: Wrap<icalproperty_kind> { .init(ICAL_METHOD_PROPERTY) }
    /// ICAL_MINDATE_PROPERTY
    public static var MINDATE: Wrap<icalproperty_kind> { .init(ICAL_MINDATE_PROPERTY) }
    /// ICAL_MULTIPART_PROPERTY
    public static var MULTIPART: Wrap<icalproperty_kind> { .init(ICAL_MULTIPART_PROPERTY) }
    /// ICAL_NAME_PROPERTY
    public static var NAME: Wrap<icalproperty_kind> { .init(ICAL_NAME_PROPERTY) }
    /// ICAL_ORGANIZER_PROPERTY
    public static var ORGANIZER: Wrap<icalproperty_kind> { .init(ICAL_ORGANIZER_PROPERTY) }
    /// ICAL_OWNER_PROPERTY
    public static var OWNER: Wrap<icalproperty_kind> { .init(ICAL_OWNER_PROPERTY) }
    /// ICAL_PATCHDELETE_PROPERTY
    public static var PATCHDELETE: Wrap<icalproperty_kind> { .init(ICAL_PATCHDELETE_PROPERTY) }
    /// ICAL_PATCHORDER_PROPERTY
    public static var PATCHORDER: Wrap<icalproperty_kind> { .init(ICAL_PATCHORDER_PROPERTY) }
    /// ICAL_PATCHPARAMETER_PROPERTY
    public static var PATCHPARAMETER: Wrap<icalproperty_kind> { .init(ICAL_PATCHPARAMETER_PROPERTY) }
    /// ICAL_PATCHTARGET_PROPERTY
    public static var PATCHTARGET: Wrap<icalproperty_kind> { .init(ICAL_PATCHTARGET_PROPERTY) }
    /// ICAL_PATCHVERSION_PROPERTY
    public static var PATCHVERSION: Wrap<icalproperty_kind> { .init(ICAL_PATCHVERSION_PROPERTY) }
    /// ICAL_PERCENTCOMPLETE_PROPERTY
    public static var PERCENTCOMPLETE: Wrap<icalproperty_kind> { .init(ICAL_PERCENTCOMPLETE_PROPERTY) }
    /// ICAL_PERMISSION_PROPERTY
    public static var PERMISSION: Wrap<icalproperty_kind> { .init(ICAL_PERMISSION_PROPERTY) }
    /// ICAL_POLLCOMPLETION_PROPERTY
    public static var POLLCOMPLETION: Wrap<icalproperty_kind> { .init(ICAL_POLLCOMPLETION_PROPERTY) }
    /// ICAL_POLLITEMID_PROPERTY
    public static var POLLITEMID: Wrap<icalproperty_kind> { .init(ICAL_POLLITEMID_PROPERTY) }
    /// ICAL_POLLMODE_PROPERTY
    public static var POLLMODE: Wrap<icalproperty_kind> { .init(ICAL_POLLMODE_PROPERTY) }
    /// ICAL_POLLPROPERTIES_PROPERTY
    public static var POLLPROPERTIES: Wrap<icalproperty_kind> { .init(ICAL_POLLPROPERTIES_PROPERTY) }
    /// ICAL_POLLWINNER_PROPERTY
    public static var POLLWINNER: Wrap<icalproperty_kind> { .init(ICAL_POLLWINNER_PROPERTY) }
    /// ICAL_PRIORITY_PROPERTY
    public static var PRIORITY: Wrap<icalproperty_kind> { .init(ICAL_PRIORITY_PROPERTY) }
    /// ICAL_PRODID_PROPERTY
    public static var PRODID: Wrap<icalproperty_kind> { .init(ICAL_PRODID_PROPERTY) }
    /// ICAL_QUERY_PROPERTY
    public static var QUERY: Wrap<icalproperty_kind> { .init(ICAL_QUERY_PROPERTY) }
    /// ICAL_QUERYLEVEL_PROPERTY
    public static var QUERYLEVEL: Wrap<icalproperty_kind> { .init(ICAL_QUERYLEVEL_PROPERTY) }
    /// ICAL_QUERYID_PROPERTY
    public static var QUERYID: Wrap<icalproperty_kind> { .init(ICAL_QUERYID_PROPERTY) }
    /// ICAL_QUERYNAME_PROPERTY
    public static var QUERYNAME: Wrap<icalproperty_kind> { .init(ICAL_QUERYNAME_PROPERTY) }
    /// ICAL_RDATE_PROPERTY
    public static var RDATE: Wrap<icalproperty_kind> { .init(ICAL_RDATE_PROPERTY) }
    /// ICAL_RECURACCEPTED_PROPERTY
    public static var RECURACCEPTED: Wrap<icalproperty_kind> { .init(ICAL_RECURACCEPTED_PROPERTY) }
    /// ICAL_RECUREXPAND_PROPERTY
    public static var RECUREXPAND: Wrap<icalproperty_kind> { .init(ICAL_RECUREXPAND_PROPERTY) }
    /// ICAL_RECURLIMIT_PROPERTY
    public static var RECURLIMIT: Wrap<icalproperty_kind> { .init(ICAL_RECURLIMIT_PROPERTY) }
    /// ICAL_RECURRENCEID_PROPERTY
    public static var RECURRENCEID: Wrap<icalproperty_kind> { .init(ICAL_RECURRENCEID_PROPERTY) }
    /// ICAL_REFRESHINTERVAL_PROPERTY
    public static var REFRESHINTERVAL: Wrap<icalproperty_kind> { .init(ICAL_REFRESHINTERVAL_PROPERTY) }
    /// ICAL_RELATEDTO_PROPERTY
    public static var RELATEDTO: Wrap<icalproperty_kind> { .init(ICAL_RELATEDTO_PROPERTY) }
    /// ICAL_RELCALID_PROPERTY
    public static var RELCALID: Wrap<icalproperty_kind> { .init(ICAL_RELCALID_PROPERTY) }
    /// ICAL_REPEAT_PROPERTY
    public static var REPEAT: Wrap<icalproperty_kind> { .init(ICAL_REPEAT_PROPERTY) }
    /// ICAL_REPLYURL_PROPERTY
    public static var REPLYURL: Wrap<icalproperty_kind> { .init(ICAL_REPLYURL_PROPERTY) }
    /// ICAL_REQUESTSTATUS_PROPERTY
    public static var REQUESTSTATUS: Wrap<icalproperty_kind> { .init(ICAL_REQUESTSTATUS_PROPERTY) }
    /// ICAL_RESOURCES_PROPERTY
    public static var RESOURCES: Wrap<icalproperty_kind> { .init(ICAL_RESOURCES_PROPERTY) }
    /// ICAL_RESPONSE_PROPERTY
    public static var RESPONSE: Wrap<icalproperty_kind> { .init(ICAL_RESPONSE_PROPERTY) }
    /// ICAL_RESTRICTION_PROPERTY
    public static var RESTRICTION: Wrap<icalproperty_kind> { .init(ICAL_RESTRICTION_PROPERTY) }
    /// ICAL_RRULE_PROPERTY
    public static var RRULE: Wrap<icalproperty_kind> { .init(ICAL_RRULE_PROPERTY) }
    /// ICAL_SCOPE_PROPERTY
    public static var SCOPE: Wrap<icalproperty_kind> { .init(ICAL_SCOPE_PROPERTY) }
    /// ICAL_SEQUENCE_PROPERTY
    public static var SEQUENCE: Wrap<icalproperty_kind> { .init(ICAL_SEQUENCE_PROPERTY) }
    /// ICAL_SOURCE_PROPERTY
    public static var SOURCE: Wrap<icalproperty_kind> { .init(ICAL_SOURCE_PROPERTY) }
    /// ICAL_STATUS_PROPERTY
    public static var STATUS: Wrap<icalproperty_kind> { .init(ICAL_STATUS_PROPERTY) }
    /// ICAL_STORESEXPANDED_PROPERTY
    public static var STORESEXPANDED: Wrap<icalproperty_kind> { .init(ICAL_STORESEXPANDED_PROPERTY) }
    /// ICAL_SUMMARY_PROPERTY
    public static var SUMMARY: Wrap<icalproperty_kind> { .init(ICAL_SUMMARY_PROPERTY) }
    /// ICAL_TARGET_PROPERTY
    public static var TARGET: Wrap<icalproperty_kind> { .init(ICAL_TARGET_PROPERTY) }
    /// ICAL_TASKMODE_PROPERTY
    public static var TASKMODE: Wrap<icalproperty_kind> { .init(ICAL_TASKMODE_PROPERTY) }
    /// ICAL_TRANSP_PROPERTY
    public static var TRANSP: Wrap<icalproperty_kind> { .init(ICAL_TRANSP_PROPERTY) }
    /// ICAL_TRIGGER_PROPERTY
    public static var TRIGGER: Wrap<icalproperty_kind> { .init(ICAL_TRIGGER_PROPERTY) }
    /// ICAL_TZID_PROPERTY
    public static var TZID: Wrap<icalproperty_kind> { .init(ICAL_TZID_PROPERTY) }
    /// ICAL_TZIDALIASOF_PROPERTY
    public static var TZIDALIASOF: Wrap<icalproperty_kind> { .init(ICAL_TZIDALIASOF_PROPERTY) }
    /// ICAL_TZNAME_PROPERTY
    public static var TZNAME: Wrap<icalproperty_kind> { .init(ICAL_TZNAME_PROPERTY) }
    /// ICAL_TZOFFSETFROM_PROPERTY
    public static var TZOFFSETFROM: Wrap<icalproperty_kind> { .init(ICAL_TZOFFSETFROM_PROPERTY) }
    /// ICAL_TZOFFSETTO_PROPERTY
    public static var TZOFFSETTO: Wrap<icalproperty_kind> { .init(ICAL_TZOFFSETTO_PROPERTY) }
    /// ICAL_TZUNTIL_PROPERTY
    public static var TZUNTIL: Wrap<icalproperty_kind> { .init(ICAL_TZUNTIL_PROPERTY) }
    /// ICAL_TZURL_PROPERTY
    public static var TZURL: Wrap<icalproperty_kind> { .init(ICAL_TZURL_PROPERTY) }
    /// ICAL_UID_PROPERTY
    public static var UID: Wrap<icalproperty_kind> { .init(ICAL_UID_PROPERTY) }
    /// ICAL_URL_PROPERTY
    public static var URL: Wrap<icalproperty_kind> { .init(ICAL_URL_PROPERTY) }
    /// ICAL_VERSION_PROPERTY
    public static var VERSION: Wrap<icalproperty_kind> { .init(ICAL_VERSION_PROPERTY) }
    /// ICAL_VOTER_PROPERTY
    public static var VOTER: Wrap<icalproperty_kind> { .init(ICAL_VOTER_PROPERTY) }
    /// ICAL_X_PROPERTY
    public static var X: Wrap<icalproperty_kind> { .init(ICAL_X_PROPERTY) }
    /// ICAL_XLICCLASS_PROPERTY
    public static var XLICCLASS: Wrap<icalproperty_kind> { .init(ICAL_XLICCLASS_PROPERTY) }
    /// ICAL_XLICCLUSTERCOUNT_PROPERTY
    public static var XLICCLUSTERCOUNT: Wrap<icalproperty_kind> { .init(ICAL_XLICCLUSTERCOUNT_PROPERTY) }
    /// ICAL_XLICERROR_PROPERTY
    public static var XLICERROR: Wrap<icalproperty_kind> { .init(ICAL_XLICERROR_PROPERTY) }
    /// ICAL_XLICMIMECHARSET_PROPERTY
    public static var XLICMIMECHARSET: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMECHARSET_PROPERTY) }
    /// ICAL_XLICMIMECID_PROPERTY
    public static var XLICMIMECID: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMECID_PROPERTY) }
    /// ICAL_XLICMIMECONTENTTYPE_PROPERTY
    public static var XLICMIMECONTENTTYPE: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMECONTENTTYPE_PROPERTY) }
    /// ICAL_XLICMIMEENCODING_PROPERTY
    public static var XLICMIMEENCODING: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMEENCODING_PROPERTY) }
    /// ICAL_XLICMIMEFILENAME_PROPERTY
    public static var XLICMIMEFILENAME: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMEFILENAME_PROPERTY) }
    /// ICAL_XLICMIMEOPTINFO_PROPERTY
    public static var XLICMIMEOPTINFO: Wrap<icalproperty_kind> { .init(ICAL_XLICMIMEOPTINFO_PROPERTY) }
    /// ICAL_NO_PROPERTY
    public static var NO: Wrap<icalproperty_kind> { .init(ICAL_NO_PROPERTY) }
    
    /// [Wrap<icalproperty_kind>]
    public static var allCases: [Wrap<icalproperty_kind>] {
        return [ANY, ACCEPTRESPONSE, ACKNOWLEDGED, ACTION, ALLOWCONFLICT, ATTACH, ATTENDEE, BUSYTYPE, CALID, CALMASTER, CALSCALE, CAPVERSION, CARLEVEL, CARID, CATEGORIES, CLASS,
                CMD, COLOR, COMMENT, COMPLETED, COMPONENTS, CONFERENCE, CONTACT, CREATED, CSID, DATEMAX, DATEMIN, DECREED, DEFAULTCHARSET, DEFAULTLOCALE, DEFAULTTZID, DEFAULTVCARS,
                DENY, DESCRIPTION, DTEND, DTSTAMP, DTSTART, DUE, DURATION, ESTIMATEDDURATION, EXDATE, EXPAND, EXRULE, FREEBUSY, GEO, GRANT, IMAGE, ITIPVERSION, LASTMODIFIED,
                LOCATION, MAXCOMPONENTSIZE, MAXDATE, MAXRESULTS, MAXRESULTSSIZE, METHOD, MINDATE, MULTIPART, NAME, ORGANIZER, OWNER, PATCHDELETE, PATCHORDER, PATCHPARAMETER,
                PATCHTARGET, PATCHVERSION, PERCENTCOMPLETE, PERMISSION, POLLCOMPLETION, POLLITEMID, POLLMODE, POLLPROPERTIES, POLLWINNER, PRIORITY, PRODID, QUERY, QUERYLEVEL,
                QUERYID, QUERYNAME, RDATE, RECURACCEPTED, RECUREXPAND, RECURLIMIT, RECURRENCEID, REFRESHINTERVAL, RELATEDTO, RELCALID, REPEAT, REPLYURL, REQUESTSTATUS,
                RESOURCES, RESPONSE, RESTRICTION, RRULE, SCOPE, SEQUENCE, SOURCE, STATUS, STORESEXPANDED, SUMMARY, TARGET, TASKMODE, TRANSP, TRIGGER, TZID, TZIDALIASOF,
                TZNAME, TZOFFSETFROM, TZOFFSETTO, TZUNTIL, TZURL, UID, URL, VERSION, VOTER, X, XLICCLASS, XLICCLUSTERCOUNT, XLICERROR, XLICMIMECHARSET, XLICMIMECID,
                XLICMIMECONTENTTYPE, XLICMIMEENCODING, XLICMIMEFILENAME, XLICMIMEOPTINFO, NO]
    }
}

// MARK: - Wrap<icalproperty_class>
extension Wrap<icalproperty_class> {
    
    /// ICAL_CLASS_X
    public static var X: Wrap<icalproperty_class> { .init(ICAL_CLASS_X) }
    /// ICAL_CLASS_PUBLIC
    public static var PUBLIC: Wrap<icalproperty_class> { .init(ICAL_CLASS_PUBLIC) }
    /// ICAL_CLASS_PRIVATE
    public static var PRIVATE: Wrap<icalproperty_class> { .init(ICAL_CLASS_PRIVATE) }
    /// ICAL_CLASS_CONFIDENTIAL
    public static var CONFIDENTIAL: Wrap<icalproperty_class> { .init(ICAL_CLASS_CONFIDENTIAL) }
    /// ICAL_CLASS_NONE
    public static var NONE: Wrap<icalproperty_class> { .init(ICAL_CLASS_NONE) }
    
    /// [Wrap<icalproperty_class>]
    public static var allCases: [Wrap<icalproperty_class>] {
        return [X, PUBLIC, PRIVATE, CONFIDENTIAL, NONE]
    }
}

// MARK: - Wrap<icalproperty_action>
extension Wrap<icalproperty_action> {
    
    /// ICAL_ACTION_X
    public static var X: Wrap<icalproperty_action> { .init(ICAL_ACTION_X) }
    /// ICAL_ACTION_AUDIO
    public static var AUDIO: Wrap<icalproperty_action> { .init(ICAL_ACTION_AUDIO) }
    /// ICAL_ACTION_DISPLAY
    public static var DISPLAY: Wrap<icalproperty_action> { .init(ICAL_ACTION_DISPLAY) }
    /// ICAL_ACTION_EMAIL
    public static var EMAIL: Wrap<icalproperty_action> { .init(ICAL_ACTION_EMAIL) }
    /// ICAL_ACTION_PROCEDURE
    public static var PROCEDURE: Wrap<icalproperty_action> { .init(ICAL_ACTION_PROCEDURE) }
    /// ICAL_ACTION_NONE
    public static var NONE: Wrap<icalproperty_action> { .init(ICAL_ACTION_NONE) }
    
    /// [Wrap<icalproperty_action>]
    public static var allCases: [Wrap<icalproperty_action>] {
        return [X, AUDIO, DISPLAY, EMAIL, PROCEDURE, NONE]
    }
}

// MARK: - Wrap<icalproperty_method>
extension Wrap<icalproperty_method> {
    
    /// ICAL_METHOD_X
    public static var X: Wrap<icalproperty_method> { .init(ICAL_METHOD_X) }
    /// ICAL_METHOD_PUBLISH
    public static var PUBLISH: Wrap<icalproperty_method> { .init(ICAL_METHOD_PUBLISH) }
    /// ICAL_METHOD_REQUEST
    public static var REQUEST: Wrap<icalproperty_method> { .init(ICAL_METHOD_REQUEST) }
    /// ICAL_METHOD_REPLY
    public static var REPLY: Wrap<icalproperty_method> { .init(ICAL_METHOD_REPLY) }
    /// ICAL_METHOD_ADD
    public static var ADD: Wrap<icalproperty_method> { .init(ICAL_METHOD_ADD) }
    /// ICAL_METHOD_CANCEL
    public static var CANCEL: Wrap<icalproperty_method> { .init(ICAL_METHOD_CANCEL) }
    /// ICAL_METHOD_REFRESH
    public static var REFRESH: Wrap<icalproperty_method> { .init(ICAL_METHOD_REFRESH) }
    /// ICAL_METHOD_COUNTER
    public static var COUNTER: Wrap<icalproperty_method> { .init(ICAL_METHOD_COUNTER) }
    /// ICAL_METHOD_DECLINECOUNTER
    public static var DECLINECOUNTER: Wrap<icalproperty_method> { .init(ICAL_METHOD_DECLINECOUNTER) }
    /// ICAL_METHOD_CREATE
    public static var CREATE: Wrap<icalproperty_method> { .init(ICAL_METHOD_CREATE) }
    /// ICAL_METHOD_READ
    public static var READ: Wrap<icalproperty_method> { .init(ICAL_METHOD_READ) }
    /// ICAL_METHOD_RESPONSE
    public static var RESPONSE: Wrap<icalproperty_method> { .init(ICAL_METHOD_RESPONSE) }
    /// ICAL_METHOD_MOVE
    public static var MOVE: Wrap<icalproperty_method> { .init(ICAL_METHOD_MOVE) }
    /// ICAL_METHOD_MODIFY
    public static var MODIFY: Wrap<icalproperty_method> { .init(ICAL_METHOD_MODIFY) }
    /// ICAL_METHOD_GENERATEUID
    public static var GENERATEUID: Wrap<icalproperty_method> { .init(ICAL_METHOD_GENERATEUID) }
    /// ICAL_METHOD_DELETE
    public static var DELETE: Wrap<icalproperty_method> { .init(ICAL_METHOD_DELETE) }
    /// ICAL_METHOD_POLLSTATUS
    public static var POLLSTATUS: Wrap<icalproperty_method> { .init(ICAL_METHOD_POLLSTATUS) }
    /// ICAL_METHOD_NONE
    public static var NONE: Wrap<icalproperty_method> { .init(ICAL_METHOD_NONE) }
    
    /// [Wrap<icalproperty_method>]
    public static var allCases: [Wrap<icalproperty_method>] {
        return [X, PUBLISH, REQUEST, REPLY, ADD, CANCEL, REFRESH, COUNTER, DECLINECOUNTER, CREATE, READ, RESPONSE, MOVE, MODIFY, GENERATEUID, DELETE, POLLSTATUS, NONE]
    }
}

// MARK: - Wrap<icalproperty_status>
extension Wrap<icalproperty_status> {
    
    /// ICAL_STATUS_X
    public static var X: Wrap<icalproperty_status> { .init(ICAL_STATUS_X) }
    /// ICAL_STATUS_TENTATIVE
    public static var TENTATIVE: Wrap<icalproperty_status> { .init(ICAL_STATUS_TENTATIVE) }
    /// ICAL_STATUS_CONFIRMED
    public static var CONFIRMED: Wrap<icalproperty_status> { .init(ICAL_STATUS_CONFIRMED) }
    /// ICAL_STATUS_COMPLETED
    public static var COMPLETED: Wrap<icalproperty_status> { .init(ICAL_STATUS_COMPLETED) }
    /// ICAL_STATUS_NEEDSACTION
    public static var NEEDSACTION: Wrap<icalproperty_status> { .init(ICAL_STATUS_NEEDSACTION) }
    /// ICAL_STATUS_CANCELLED
    public static var CANCELLED: Wrap<icalproperty_status> { .init(ICAL_STATUS_CANCELLED) }
    /// ICAL_STATUS_INPROCESS
    public static var INPROCESS: Wrap<icalproperty_status> { .init(ICAL_STATUS_INPROCESS) }
    /// ICAL_STATUS_DRAFT
    public static var DRAFT: Wrap<icalproperty_status> { .init(ICAL_STATUS_DRAFT) }
    /// ICAL_STATUS_FINAL
    public static var FINAL: Wrap<icalproperty_status> { .init(ICAL_STATUS_FINAL) }
    /// ICAL_STATUS_SUBMITTED
    public static var SUBMITTED: Wrap<icalproperty_status> { .init(ICAL_STATUS_SUBMITTED) }
    /// ICAL_STATUS_PENDING
    public static var PENDING: Wrap<icalproperty_status> { .init(ICAL_STATUS_PENDING) }
    /// ICAL_STATUS_FAILED
    public static var FAILED: Wrap<icalproperty_status> { .init(ICAL_STATUS_FAILED) }
    /// ICAL_STATUS_DELETED
    public static var DELETED: Wrap<icalproperty_status> { .init(ICAL_STATUS_DELETED) }
    /// ICAL_STATUS_NONE
    public static var NONE: Wrap<icalproperty_status> { .init(ICAL_STATUS_NONE) }
    
    /// [Wrap<icalproperty_status>]
    public static var allCases: [Wrap<icalproperty_status>] {
        return [X, TENTATIVE, CONFIRMED, COMPLETED, NEEDSACTION, CANCELLED, INPROCESS, DRAFT, FINAL, SUBMITTED, PENDING, FAILED, DELETED, NONE]
    }
}

// MARK: - Wrap<icalproperty_transp>
extension Wrap<icalproperty_transp> {
    
    /// ICAL_TRANSP_X
    public static var X: Wrap<icalproperty_transp> { .init(ICAL_TRANSP_X) }
    /// ICAL_TRANSP_OPAQUE
    public static var OPAQUE: Wrap<icalproperty_transp> { .init(ICAL_TRANSP_OPAQUE) }
    /// ICAL_TRANSP_OPAQUENOCONFLICT
    public static var OPAQUENOCONFLICT: Wrap<icalproperty_transp> { .init(ICAL_TRANSP_OPAQUENOCONFLICT) }
    /// ICAL_TRANSP_TRANSPARENT
    public static var TRANSPARENT: Wrap<icalproperty_transp> { .init(ICAL_TRANSP_TRANSPARENT) }
    /// ICAL_TRANSP_TRANSPARENTNOCONFLICT
    public static var TRANSPARENTNOCONFLICT: Wrap<icalproperty_transp> { .init(ICAL_TRANSP_TRANSPARENTNOCONFLICT) }
    /// ICAL_TRANSP_NONE
    public static var NONE: Wrap<icalproperty_transp> { .init(ICAL_TRANSP_NONE) }
    
    /// [Wrap<icalproperty_transp>]
    public static var allCases: [Wrap<icalproperty_transp>] {
        return [X, OPAQUE, OPAQUENOCONFLICT, TRANSPARENT, TRANSPARENTNOCONFLICT, NONE]
    }
}

// MARK: - Wrap<icalproperty_busytype>
extension Wrap<icalproperty_busytype> {
    
    /// ICAL_BUSYTYPE_X
    public static var X: Wrap<icalproperty_busytype> { .init(ICAL_BUSYTYPE_X) }
    /// ICAL_BUSYTYPE_BUSY
    public static var BUSY: Wrap<icalproperty_busytype> { .init(ICAL_BUSYTYPE_BUSY) }
    /// ICAL_BUSYTYPE_BUSYUNAVAILABLE
    public static var BUSYUNAVAILABLE: Wrap<icalproperty_busytype> { .init(ICAL_BUSYTYPE_BUSYUNAVAILABLE) }
    /// ICAL_BUSYTYPE_BUSYTENTATIVE
    public static var BUSYTENTATIVE: Wrap<icalproperty_busytype> { .init(ICAL_BUSYTYPE_BUSYTENTATIVE) }
    /// ICAL_BUSYTYPE_NONE
    public static var NONE: Wrap<icalproperty_busytype> { .init(ICAL_BUSYTYPE_NONE) }
    
    /// [Wrap<icalproperty_busytype>]
    public static var allCases: [Wrap<icalproperty_busytype>] {
        return [X, BUSY, BUSYUNAVAILABLE, BUSYTENTATIVE, NONE]
    }
}

// MARK: - Wrap<icalproperty_carlevel>
extension Wrap<icalproperty_carlevel> {
    
    /// ICAL_CARLEVEL_X
    public static var X: Wrap<icalproperty_carlevel> { .init(ICAL_CARLEVEL_X) }
    /// ICAL_CARLEVEL_CARNONE
    public static var CARNONE: Wrap<icalproperty_carlevel> { .init(ICAL_CARLEVEL_CARNONE) }
    /// ICAL_CARLEVEL_CARMIN
    public static var CARMIN: Wrap<icalproperty_carlevel> { .init(ICAL_CARLEVEL_CARMIN) }
    /// ICAL_CARLEVEL_CARFULL1
    public static var CARFULL1: Wrap<icalproperty_carlevel> { .init(ICAL_CARLEVEL_CARFULL1) }
    /// ICAL_CARLEVEL_NONE
    public static var NONE: Wrap<icalproperty_carlevel> { .init(ICAL_CARLEVEL_NONE) }
    
    /// [Wrap<icalproperty_carlevel>]
    public static var allCases: [Wrap<icalproperty_carlevel>] {
        return [X, CARNONE, CARMIN, CARFULL1, NONE]
    }
    
}

// MARK: - Wrap<icalproperty_pollmode>
extension Wrap<icalproperty_pollmode> {
    
    /// ICAL_POLLMODE_X
    public static var X: Wrap<icalproperty_pollmode> { .init(ICAL_POLLMODE_X) }
    /// ICAL_POLLMODE_BASIC
    public static var BASIC: Wrap<icalproperty_pollmode> { .init(ICAL_POLLMODE_BASIC) }
    /// ICAL_POLLMODE_NONE
    public static var NONE: Wrap<icalproperty_pollmode> { .init(ICAL_POLLMODE_NONE) }
    
    /// [Wrap<icalproperty_pollmode>]
    public static var allCases: [Wrap<icalproperty_pollmode>] {
        return [X, BASIC, NONE]
    }
}

// MARK: - Wrap<icalproperty_taskmode>
extension Wrap<icalproperty_taskmode> {
    
    /// ICAL_TASKMODE_X
    public static var X: Wrap<icalproperty_taskmode> { .init(ICAL_TASKMODE_X) }
    /// ICAL_TASKMODE_AUTOMATICCOMPLETION
    public static var AUTOMATICCOMPLETION: Wrap<icalproperty_taskmode> { .init(ICAL_TASKMODE_AUTOMATICCOMPLETION) }
    /// ICAL_TASKMODE_AUTOMATICFAILURE
    public static var AUTOMATICFAILURE: Wrap<icalproperty_taskmode> { .init(ICAL_TASKMODE_AUTOMATICFAILURE) }
    /// ICAL_TASKMODE_AUTOMATICSTATUS
    public static var AUTOMATICSTATUS: Wrap<icalproperty_taskmode> { .init(ICAL_TASKMODE_AUTOMATICSTATUS) }
    /// ICAL_TASKMODE_NONE
    public static var NONE: Wrap<icalproperty_taskmode> { .init(ICAL_TASKMODE_NONE) }
    
    /// [Wrap<icalproperty_taskmode>]
    public static var allCases: [Wrap<icalproperty_taskmode>] {
        return [X, AUTOMATICCOMPLETION, AUTOMATICFAILURE, AUTOMATICSTATUS, NONE]
    }
}

// MARK: - Wrap<icalproperty_xlicclass>
extension Wrap<icalproperty_xlicclass> {
    
    /// ICAL_XLICCLASS_X
    public static var X: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_X) }
    /// ICAL_XLICCLASS_PUBLISHNEW
    public static var PUBLISHNEW: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_PUBLISHNEW) }
    /// ICAL_XLICCLASS_PUBLISHUPDATE
    public static var PUBLISHUPDATE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_PUBLISHUPDATE) }
    /// ICAL_XLICCLASS_PUBLISHFREEBUSY
    public static var PUBLISHFREEBUSY: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_PUBLISHFREEBUSY) }
    /// ICAL_XLICCLASS_REQUESTNEW
    public static var REQUESTNEW: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REQUESTNEW) }
    /// ICAL_XLICCLASS_REQUESTUPDATE
    public static var REQUESTUPDATE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REQUESTUPDATE) }
    /// ICAL_XLICCLASS_REQUESTRESCHEDULE
    public static var REQUESTRESCHEDULE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REQUESTRESCHEDULE) }
    /// ICAL_XLICCLASS_REQUESTDELEGATE
    public static var REQUESTDELEGATE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REQUESTDELEGATE) }
    /// ICAL_XLICCLASS_REQUESTNEWORGANIZER
    public static var REQUESTNEWORGANIZER: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REQUESTNEWORGANIZER) }
    /// ICAL_XLICCLASS_REQUESTFORWARD
    public static var REQUESTFORWARD: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REQUESTFORWARD) }
    /// ICAL_XLICCLASS_REQUESTSTATUS
    public static var REQUESTSTATUS: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REQUESTSTATUS) }
    /// ICAL_XLICCLASS_REQUESTFREEBUSY
    public static var REQUESTFREEBUSY: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REQUESTFREEBUSY) }
    /// ICAL_XLICCLASS_REPLYACCEPT
    public static var REPLYACCEPT: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REPLYACCEPT) }
    /// ICAL_XLICCLASS_REPLYDECLINE
    public static var REPLYDECLINE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REPLYDECLINE) }
    /// ICAL_XLICCLASS_REPLYDELEGATE
    public static var REPLYDELEGATE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REPLYDELEGATE) }
    /// ICAL_XLICCLASS_REPLYCRASHERACCEPT
    public static var REPLYCRASHERACCEPT: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REPLYCRASHERACCEPT) }
    /// ICAL_XLICCLASS_REPLYCRASHERDECLINE
    public static var REPLYCRASHERDECLINE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REPLYCRASHERDECLINE) }
    /// ICAL_XLICCLASS_ADDINSTANCE
    public static var ADDINSTANCE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_ADDINSTANCE) }
    /// ICAL_XLICCLASS_CANCELEVENT
    public static var CANCELEVENT: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_CANCELEVENT) }
    /// ICAL_XLICCLASS_CANCELINSTANCE
    public static var CANCELINSTANCE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_CANCELINSTANCE) }
    /// ICAL_XLICCLASS_CANCELALL
    public static var CANCELALL: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_CANCELALL) }
    /// ICAL_XLICCLASS_REFRESH
    public static var REFRESH: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_REFRESH) }
    /// ICAL_XLICCLASS_COUNTER
    public static var COUNTER: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_COUNTER) }
    /// ICAL_XLICCLASS_DECLINECOUNTER
    public static var DECLINECOUNTER: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_DECLINECOUNTER) }
    /// ICAL_XLICCLASS_MALFORMED
    public static var MALFORMED: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_MALFORMED) }
    /// ICAL_XLICCLASS_OBSOLETE
    public static var OBSOLETE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_OBSOLETE) }
    /// ICAL_XLICCLASS_MISSEQUENCED
    public static var MISSEQUENCED: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_MISSEQUENCED) }
    /// ICAL_XLICCLASS_UNKNOWN
    public static var UNKNOWN: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_UNKNOWN) }
    /// ICAL_XLICCLASS_NONE
    public static var NONE: Wrap<icalproperty_xlicclass> { .init(ICAL_XLICCLASS_NONE) }
    
    /// [Wrap<icalproperty_xlicclass>]
    public static var allCases: [Wrap<icalproperty_xlicclass>] {
        return [X, PUBLISHNEW, PUBLISHUPDATE, PUBLISHFREEBUSY, REQUESTNEW, REQUESTUPDATE, REQUESTRESCHEDULE, REQUESTDELEGATE, REQUESTNEWORGANIZER, REQUESTFORWARD,
                REQUESTSTATUS, REQUESTFREEBUSY, REPLYACCEPT, REPLYDECLINE, REPLYDELEGATE, REPLYCRASHERACCEPT, REPLYCRASHERDECLINE, ADDINSTANCE, CANCELEVENT,
                CANCELINSTANCE, CANCELALL, REFRESH, COUNTER, DECLINECOUNTER, MALFORMED, OBSOLETE, MISSEQUENCED, UNKNOWN, NONE]
    }
}

// MARK: - Wrap<icalproperty_querylevel>
extension Wrap<icalproperty_querylevel> {
    
    /// ICAL_QUERYLEVEL_X
    public static var X: Wrap<icalproperty_querylevel> { .init(ICAL_QUERYLEVEL_X) }
    /// ICAL_QUERYLEVEL_CALQL1
    public static var CALQL1: Wrap<icalproperty_querylevel> { .init(ICAL_QUERYLEVEL_CALQL1) }
    /// ICAL_QUERYLEVEL_CALQLNONE
    public static var CALQLNONE: Wrap<icalproperty_querylevel> { .init(ICAL_QUERYLEVEL_CALQLNONE) }
    /// ICAL_QUERYLEVEL_NONE
    public static var NONE: Wrap<icalproperty_querylevel> { .init(ICAL_QUERYLEVEL_NONE) }
    
    /// [Wrap<icalproperty_querylevel>]
    public static var allCases: [Wrap<icalproperty_querylevel>] {
        return [X, CALQL1, CALQLNONE, NONE]
    }
}

// MARK: - Wrap<icalproperty_pollcompletion>
extension Wrap<icalproperty_pollcompletion> {
    
    /// ICAL_POLLCOMPLETION_X
    public static var X: Wrap<icalproperty_pollcompletion> { .init(ICAL_POLLCOMPLETION_X) }
    /// ICAL_POLLCOMPLETION_SERVER
    public static var SERVER: Wrap<icalproperty_pollcompletion> { .init(ICAL_POLLCOMPLETION_SERVER) }
    /// ICAL_POLLCOMPLETION_SERVERSUBMIT
    public static var SERVERSUBMIT: Wrap<icalproperty_pollcompletion> { .init(ICAL_POLLCOMPLETION_SERVERSUBMIT) }
    /// ICAL_POLLCOMPLETION_SERVERCHOICE
    public static var SERVERCHOICE: Wrap<icalproperty_pollcompletion> { .init(ICAL_POLLCOMPLETION_SERVERCHOICE) }
    /// ICAL_POLLCOMPLETION_CLIENT
    public static var CLIENT: Wrap<icalproperty_pollcompletion> { .init(ICAL_POLLCOMPLETION_CLIENT) }
    /// ICAL_POLLCOMPLETION_NONE
    public static var NONE: Wrap<icalproperty_pollcompletion> { .init(ICAL_POLLCOMPLETION_NONE) }
    
    /// [Wrap<icalproperty_pollcompletion>]
    public static var allCases: [Wrap<icalproperty_pollcompletion>] {
        return [X, SERVER, SERVERSUBMIT, SERVERCHOICE, CLIENT, NONE]
    }
}
