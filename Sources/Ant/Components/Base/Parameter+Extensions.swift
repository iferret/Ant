//
//  Parameter+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

// MARK: - Wrap<icalparameter_kind>
extension Wrap<icalparameter_kind> {
    
    /// ICAL_ANY_PARAMETER
    public static var ANY: Wrap<icalparameter_kind> { .init(ICAL_ANY_PARAMETER) }
    /// ICAL_ACTIONPARAM_PARAMETER
    public static var ACTIONPARAM: Wrap<icalparameter_kind> { .init(ICAL_ACTIONPARAM_PARAMETER) }
    /// ICAL_ALTREP_PARAMETER
    public static var ALTREP: Wrap<icalparameter_kind> { .init(ICAL_ALTREP_PARAMETER) }
    /// ICAL_CHARSET_PARAMETER
    public static var CHARSET: Wrap<icalparameter_kind> { .init(ICAL_CHARSET_PARAMETER) }
    /// ICAL_CN_PARAMETER
    public static var CN: Wrap<icalparameter_kind> { .init(ICAL_CN_PARAMETER) }
    /// ICAL_CUTYPE_PARAMETER
    public static var CUTYPE: Wrap<icalparameter_kind> { .init(ICAL_CUTYPE_PARAMETER) }
    /// ICAL_DELEGATEDFROM_PARAMETER
    public static var DELEGATEDFROM: Wrap<icalparameter_kind> { .init(ICAL_DELEGATEDFROM_PARAMETER) }
    /// ICAL_DELEGATEDTO_PARAMETER
    public static var DELEGATEDTO: Wrap<icalparameter_kind> { .init(ICAL_DELEGATEDTO_PARAMETER) }
    /// ICAL_DIR_PARAMETER
    public static var DIR: Wrap<icalparameter_kind> { .init(ICAL_DIR_PARAMETER) }
    /// ICAL_DISPLAY_PARAMETER
    public static var DISPLAY: Wrap<icalparameter_kind> { .init(ICAL_DISPLAY_PARAMETER) }
    /// ICAL_EMAIL_PARAMETER
    public static var EMAIL: Wrap<icalparameter_kind> { .init(ICAL_EMAIL_PARAMETER) }
    /// ICAL_ENABLE_PARAMETER
    public static var ENABLE: Wrap<icalparameter_kind> { .init(ICAL_ENABLE_PARAMETER) }
    /// ICAL_ENCODING_PARAMETER
    public static var ENCODING: Wrap<icalparameter_kind> { .init(ICAL_ENCODING_PARAMETER) }
    /// ICAL_FBTYPE_PARAMETER
    public static var FBTYPE: Wrap<icalparameter_kind> { .init(ICAL_FBTYPE_PARAMETER) }
    /// ICAL_FEATURE_PARAMETER
    public static var FEATURE: Wrap<icalparameter_kind> { .init(ICAL_FEATURE_PARAMETER) }
    /// ICAL_FILENAME_PARAMETER
    public static var FILENAME: Wrap<icalparameter_kind> { .init(ICAL_FILENAME_PARAMETER) }
    /// ICAL_FMTTYPE_PARAMETER
    public static var FMTTYPE: Wrap<icalparameter_kind> { .init(ICAL_FMTTYPE_PARAMETER) }
    /// ICAL_IANA_PARAMETER
    public static var IANA: Wrap<icalparameter_kind> { .init(ICAL_IANA_PARAMETER) }
    /// ICAL_ID_PARAMETER
    public static var ID: Wrap<icalparameter_kind> { .init(ICAL_ID_PARAMETER) }
    /// ICAL_LABEL_PARAMETER
    public static var LABEL: Wrap<icalparameter_kind> { .init(ICAL_LABEL_PARAMETER) }
    /// ICAL_LANGUAGE_PARAMETER
    public static var LANGUAGE: Wrap<icalparameter_kind> { .init(ICAL_LANGUAGE_PARAMETER) }
    /// ICAL_LATENCY_PARAMETER
    public static var LATENCY: Wrap<icalparameter_kind> { .init(ICAL_LATENCY_PARAMETER) }
    /// ICAL_LOCAL_PARAMETER
    public static var LOCAL: Wrap<icalparameter_kind> { .init(ICAL_LOCAL_PARAMETER) }
    /// ICAL_LOCALIZE_PARAMETER
    public static var LOCALIZE: Wrap<icalparameter_kind> { .init(ICAL_LOCALIZE_PARAMETER) }
    /// ICAL_MANAGEDID_PARAMETER
    public static var MANAGEDID: Wrap<icalparameter_kind> { .init(ICAL_MANAGEDID_PARAMETER) }
    /// ICAL_MEMBER_PARAMETER
    public static var MEMBER: Wrap<icalparameter_kind> { .init(ICAL_MEMBER_PARAMETER) }
    /// ICAL_MODIFIED_PARAMETER
    public static var MODIFIED: Wrap<icalparameter_kind> { .init(ICAL_MODIFIED_PARAMETER) }
    /// ICAL_OPTIONS_PARAMETER
    public static var OPTIONS: Wrap<icalparameter_kind> { .init(ICAL_OPTIONS_PARAMETER) }
    /// ICAL_PARTSTAT_PARAMETER
    public static var PARTSTAT: Wrap<icalparameter_kind> { .init(ICAL_PARTSTAT_PARAMETER) }
    /// ICAL_PATCHACTION_PARAMETER
    public static var PATCHACTION: Wrap<icalparameter_kind> { .init(ICAL_PATCHACTION_PARAMETER) }
    /// ICAL_PUBLICCOMMENT_PARAMETER
    public static var PUBLICCOMMENT: Wrap<icalparameter_kind> { .init(ICAL_PUBLICCOMMENT_PARAMETER) }
    /// ICAL_RANGE_PARAMETER
    public static var RANGE: Wrap<icalparameter_kind> { .init(ICAL_RANGE_PARAMETER) }
    /// ICAL_REASON_PARAMETER
    public static var REASON: Wrap<icalparameter_kind> { .init(ICAL_REASON_PARAMETER) }
    /// ICAL_RELATED_PARAMETER
    public static var RELATED: Wrap<icalparameter_kind> { .init(ICAL_RELATED_PARAMETER) }
    /// ICAL_RELTYPE_PARAMETER
    public static var RELTYPE: Wrap<icalparameter_kind> { .init(ICAL_RELTYPE_PARAMETER) }
    /// ICAL_REQUIRED_PARAMETER
    public static var REQUIRED: Wrap<icalparameter_kind> { .init(ICAL_REQUIRED_PARAMETER) }
    /// ICAL_RESPONSE_PARAMETER
    public static var RESPONSE: Wrap<icalparameter_kind> { .init(ICAL_RESPONSE_PARAMETER) }
    /// ICAL_ROLE_PARAMETER
    public static var ROLE: Wrap<icalparameter_kind> { .init(ICAL_ROLE_PARAMETER) }
    /// ICAL_RSVP_PARAMETER
    public static var RSVP: Wrap<icalparameter_kind> { .init(ICAL_RSVP_PARAMETER) }
    /// ICAL_SCHEDULEAGENT_PARAMETER
    public static var SCHEDULEAGENT: Wrap<icalparameter_kind> { .init(ICAL_SCHEDULEAGENT_PARAMETER) }
    /// ICAL_SCHEDULEFORCESEND_PARAMETER
    public static var SCHEDULEFORCESEND: Wrap<icalparameter_kind> { .init(ICAL_SCHEDULEFORCESEND_PARAMETER) }
    /// ICAL_SCHEDULESTATUS_PARAMETER
    public static var SCHEDULESTATUS: Wrap<icalparameter_kind> { .init(ICAL_SCHEDULESTATUS_PARAMETER) }
    /// ICAL_SENTBY_PARAMETER
    public static var SENTBY: Wrap<icalparameter_kind> { .init(ICAL_SENTBY_PARAMETER) }
    /// ICAL_SIZE_PARAMETER
    public static var SIZE: Wrap<icalparameter_kind> { .init(ICAL_SIZE_PARAMETER) }
    /// ICAL_STAYINFORMED_PARAMETER
    public static var STAYINFORMED: Wrap<icalparameter_kind> { .init(ICAL_STAYINFORMED_PARAMETER) }
    /// ICAL_SUBSTATE_PARAMETER
    public static var SUBSTATE: Wrap<icalparameter_kind> { .init(ICAL_SUBSTATE_PARAMETER) }
    /// ICAL_TZID_PARAMETER
    public static var TZID: Wrap<icalparameter_kind> { .init(ICAL_TZID_PARAMETER) }
    /// ICAL_VALUE_PARAMETER
    public static var VALUE: Wrap<icalparameter_kind> { .init(ICAL_VALUE_PARAMETER) }
    /// ICAL_X_PARAMETER
    public static var X: Wrap<icalparameter_kind> { .init(ICAL_X_PARAMETER) }
    /// ICAL_XLICCOMPARETYPE_PARAMETER
    public static var XLICCOMPARETYPE: Wrap<icalparameter_kind> { .init(ICAL_XLICCOMPARETYPE_PARAMETER) }
    /// ICAL_XLICERRORTYPE_PARAMETER
    public static var XLICERRORTYPE: Wrap<icalparameter_kind> { .init(ICAL_XLICERRORTYPE_PARAMETER) }
    /// ICAL_NO_PARAMETER
    public static var NO: Wrap<icalparameter_kind> { .init(ICAL_NO_PARAMETER) }
    
    /// [Wrap<icalparameter_kind>]
    public static var allCases: [Wrap<icalparameter_kind>] {
        return [ANY, ACTIONPARAM, ALTREP, CHARSET, CN, CUTYPE, DELEGATEDFROM, DELEGATEDTO, DIR, DISPLAY, EMAIL, ENABLE, ENCODING, FBTYPE, FEATURE,
                FILENAME, FMTTYPE, IANA, ID, LABEL, LANGUAGE, LATENCY, LOCAL, LOCALIZE, MANAGEDID, MEMBER, MODIFIED, OPTIONS, PARTSTAT, PATCHACTION,
                PUBLICCOMMENT, RANGE, REASON, RELATED, RELTYPE, REQUIRED, RESPONSE, ROLE, RSVP, SCHEDULEAGENT, SCHEDULEFORCESEND, SCHEDULESTATUS,
                SENTBY, SIZE, STAYINFORMED, SUBSTATE, TZID, VALUE, X, XLICCOMPARETYPE, XLICERRORTYPE, NO]
    }
}

// MARK: - Wrap<icalparameter_role>
extension Wrap<icalparameter_role> {
    
    /// ICAL_ROLE_X
    public static var X: Wrap<icalparameter_role> { .init(ICAL_ROLE_X) }
    /// ICAL_ROLE_CHAIR
    public static var CHAIR: Wrap<icalparameter_role> { .init(ICAL_ROLE_CHAIR) }
    /// ICAL_ROLE_REQPARTICIPANT
    public static var REQPARTICIPANT: Wrap<icalparameter_role> { .init(ICAL_ROLE_REQPARTICIPANT) }
    /// ICAL_ROLE_OPTPARTICIPANT
    public static var OPTPARTICIPANT: Wrap<icalparameter_role> { .init(ICAL_ROLE_OPTPARTICIPANT) }
    /// ICAL_ROLE_NONPARTICIPANT
    public static var NONPARTICIPANT: Wrap<icalparameter_role> { .init(ICAL_ROLE_NONPARTICIPANT) }
    /// ICAL_ROLE_NONE
    public static var NONE: Wrap<icalparameter_role> { .init(ICAL_ROLE_NONE) }
    
    /// [Wrap<icalparameter_role>]
    public static var allCases: [Wrap<icalparameter_role>] {
        return [X, CHAIR, REQPARTICIPANT, OPTPARTICIPANT, NONPARTICIPANT, NONE]
    }
    
}

// MARK: - Wrap<icalparameter_rsvp>
extension Wrap<icalparameter_rsvp> {
    
    /// ICAL_RSVP_X
    public static var X: Wrap<icalparameter_rsvp> { .init(ICAL_RSVP_X) }
    /// ICAL_RSVP_TRUE
    public static var TRUE: Wrap<icalparameter_rsvp> { .init(ICAL_RSVP_TRUE) }
    /// ICAL_RSVP_FALSE
    public static var FALSE: Wrap<icalparameter_rsvp> { .init(ICAL_RSVP_FALSE) }
    /// ICAL_RSVP_NONE
    public static var NONE: Wrap<icalparameter_rsvp> { .init(ICAL_RSVP_NONE) }
    
    /// [Wrap<icalparameter_rsvp>]
    public static var allCases: [Wrap<icalparameter_rsvp>] {
        return [X, TRUE, FALSE, NONE]
    }
    
}

// MARK: - Wrap<icalparameter_local>
extension Wrap<icalparameter_local> {
    
    /// ICAL_LOCAL_X
    public static var X: Wrap<icalparameter_local> { .init(ICAL_LOCAL_X) }
    /// ICAL_LOCAL_TRUE
    public static var TRUE: Wrap<icalparameter_local> { .init(ICAL_LOCAL_TRUE) }
    /// ICAL_LOCAL_FALSE
    public static var FALSE: Wrap<icalparameter_local> { .init(ICAL_LOCAL_FALSE) }
    /// ICAL_LOCAL_NONE
    public static var NONE: Wrap<icalparameter_local> { .init(ICAL_LOCAL_NONE) }
    
    /// [Wrap<icalparameter_local>]
    public static var allCases: [Wrap<icalparameter_local>] {
        return [X, TRUE, FALSE, NONE]
    }
}

// MARK: - Wrap<icalparameter_range>
extension Wrap<icalparameter_range> {
    
    /// ICAL_RANGE_X
    public static var X: Wrap<icalparameter_range> { .init(ICAL_RANGE_X) }
    /// ICAL_RANGE_THISANDPRIOR
    public static var THISANDPRIOR: Wrap<icalparameter_range> { .init(ICAL_RANGE_THISANDPRIOR) }
    /// ICAL_RANGE_THISANDFUTURE
    public static var THISANDFUTURE: Wrap<icalparameter_range> { .init(ICAL_RANGE_THISANDFUTURE) }
    /// ICAL_RANGE_NONE
    public static var NONE: Wrap<icalparameter_range> { .init(ICAL_RANGE_NONE) }
    
    /// [Wrap<icalparameter_range>]
    public static var allCases: [Wrap<icalparameter_range>] {
        return [X, THISANDPRIOR, THISANDFUTURE, NONE]
    }
}

// MARK: - Wrap<icalparameter_value>
extension Wrap<icalparameter_value> {
    
    /// ICAL_VALUE_X
    public static var X: Wrap<icalparameter_value> { .init(ICAL_VALUE_X) }
    /// ICAL_VALUE_BINARY
    public static var BINARY: Wrap<icalparameter_value> { .init(ICAL_VALUE_BINARY) }
    /// ICAL_VALUE_BOOLEAN
    public static var BOOLEAN: Wrap<icalparameter_value> { .init(ICAL_VALUE_BOOLEAN) }
    /// ICAL_VALUE_DATE
    public static var DATE: Wrap<icalparameter_value> { .init(ICAL_VALUE_DATE) }
    /// ICAL_VALUE_DURATION
    public static var DURATION: Wrap<icalparameter_value> { .init(ICAL_VALUE_DURATION) }
    /// ICAL_VALUE_FLOAT
    public static var FLOAT: Wrap<icalparameter_value> { .init(ICAL_VALUE_FLOAT) }
    /// ICAL_VALUE_INTEGER
    public static var INTEGER: Wrap<icalparameter_value> { .init(ICAL_VALUE_INTEGER) }
    /// ICAL_VALUE_PERIOD
    public static var PERIOD: Wrap<icalparameter_value> { .init(ICAL_VALUE_PERIOD) }
    /// ICAL_VALUE_RECUR
    public static var RECUR: Wrap<icalparameter_value> { .init(ICAL_VALUE_RECUR) }
    /// ICAL_VALUE_TEXT
    public static var TEXT: Wrap<icalparameter_value> { .init(ICAL_VALUE_TEXT) }
    /// ICAL_VALUE_URI
    public static var URI: Wrap<icalparameter_value> { .init(ICAL_VALUE_URI) }
    /// ICAL_VALUE_ERROR
    public static var ERROR: Wrap<icalparameter_value> { .init(ICAL_VALUE_ERROR) }
    /// ICAL_VALUE_DATETIME
    public static var DATETIME: Wrap<icalparameter_value> { .init(ICAL_VALUE_DATETIME) }
    /// ICAL_VALUE_UTCOFFSET
    public static var UTCOFFSET: Wrap<icalparameter_value> { .init(ICAL_VALUE_UTCOFFSET) }
    /// ICAL_VALUE_CALADDRESS
    public static var CALADDRESS: Wrap<icalparameter_value> { .init(ICAL_VALUE_CALADDRESS) }
    /// ICAL_VALUE_NONE
    public static var NONE: Wrap<icalparameter_value> { .init(ICAL_VALUE_NONE) }
    
    /// [Wrap<icalparameter_value>]
    public static var allCases: [Wrap<icalparameter_value>] {
        return [X, BINARY, BOOLEAN, DATE, DURATION, FLOAT, INTEGER, PERIOD, RECUR, TEXT, URI, ERROR, DATETIME, UTCOFFSET, CALADDRESS, NONE]
    }
}

// MARK: - Wrap<icalparameter_action>
extension Wrap<icalparameter_action> {
    
    /// ICAL_ACTIONPARAM_X
    public static var X: Wrap<icalparameter_action> { .init(ICAL_ACTIONPARAM_X) }
    /// ICAL_ACTIONPARAM_ASK
    public static var ASK: Wrap<icalparameter_action> { .init(ICAL_ACTIONPARAM_ASK) }
    /// ICAL_ACTIONPARAM_ABORT
    public static var ABORT: Wrap<icalparameter_action> { .init(ICAL_ACTIONPARAM_ABORT) }
    /// ICAL_ACTIONPARAM_NONE
    public static var NONE: Wrap<icalparameter_action> { .init(ICAL_ACTIONPARAM_NONE) }
    
    /// [Wrap<icalparameter_action>]
    public static var allCases: [Wrap<icalparameter_action>] {
        return [X, ASK, ABORT, NONE]
    }
    
}

// MARK: - Wrap<icalparameter_cutype>
extension Wrap<icalparameter_cutype> {
    
    /// ICAL_CUTYPE_X
    public static var X: Wrap<icalparameter_cutype> { .init(ICAL_CUTYPE_X) }
    /// ICAL_CUTYPE_INDIVIDUAL
    public static var INDIVIDUAL: Wrap<icalparameter_cutype> { .init(ICAL_CUTYPE_INDIVIDUAL) }
    /// ICAL_CUTYPE_GROUP
    public static var GROUP: Wrap<icalparameter_cutype> { .init(ICAL_CUTYPE_GROUP) }
    /// ICAL_CUTYPE_RESOURCE
    public static var RESOURCE: Wrap<icalparameter_cutype> { .init(ICAL_CUTYPE_RESOURCE) }
    /// ICAL_CUTYPE_ROOM
    public static var ROOM: Wrap<icalparameter_cutype> { .init(ICAL_CUTYPE_ROOM) }
    /// ICAL_CUTYPE_UNKNOWN
    public static var UNKNOWN: Wrap<icalparameter_cutype> { .init(ICAL_CUTYPE_UNKNOWN) }
    /// ICAL_CUTYPE_NONE
    public static var NONE: Wrap<icalparameter_cutype> { .init(ICAL_CUTYPE_NONE) }
    
    /// [Wrap<icalparameter_cutype>]
    public static var allCases: [Wrap<icalparameter_cutype>] {
        return [X, INDIVIDUAL, GROUP, RESOURCE, ROOM, UNKNOWN, NONE]
    }
}

// MARK: - Wrap<icalparameter_enable>
extension Wrap<icalparameter_enable> {
    
    /// ICAL_ENABLE_X
    public static var X: Wrap<icalparameter_enable> { .init(ICAL_ENABLE_X) }
    /// ICAL_ENABLE_TRUE
    public static var TRUE: Wrap<icalparameter_enable> { .init(ICAL_ENABLE_TRUE) }
    /// ICAL_ENABLE_FALSE
    public static var FALSE: Wrap<icalparameter_enable> { .init(ICAL_ENABLE_FALSE) }
    /// ICAL_ENABLE_NONE
    public static var NONE: Wrap<icalparameter_enable> { .init(ICAL_ENABLE_NONE) }
    
    /// [Wrap<icalparameter_enable>]
    public static var allCases: [Wrap<icalparameter_enable>] {
        return [X, TRUE, FALSE, NONE]
    }
}

// MARK: - Wrap<icalparameter_fbtype>
extension Wrap<icalparameter_fbtype> {
    
    /// ICAL_FBTYPE_X
    public static var X: Wrap<icalparameter_fbtype> { .init(ICAL_FBTYPE_X) }
    /// ICAL_FBTYPE_FREE
    public static var FREE: Wrap<icalparameter_fbtype> { .init(ICAL_FBTYPE_FREE) }
    /// ICAL_FBTYPE_BUSY
    public static var BUSY: Wrap<icalparameter_fbtype> { .init(ICAL_FBTYPE_BUSY) }
    /// ICAL_FBTYPE_BUSYUNAVAILABLE
    public static var BUSYUNAVAILABLE: Wrap<icalparameter_fbtype> { .init(ICAL_FBTYPE_BUSYUNAVAILABLE) }
    /// ICAL_FBTYPE_BUSYTENTATIVE
    public static var BUSYTENTATIVE: Wrap<icalparameter_fbtype> { .init(ICAL_FBTYPE_BUSYTENTATIVE) }
    /// ICAL_FBTYPE_NONE
    public static var NONE: Wrap<icalparameter_fbtype> { .init(ICAL_FBTYPE_NONE) }
    
    /// [Wrap<icalparameter_fbtype>]
    public static var allCases: [Wrap<icalparameter_fbtype>] {
        return [X, FREE, BUSY, BUSYUNAVAILABLE, BUSYTENTATIVE, NONE]
    }
}

// MARK: - Wrap<icalparameter_display>
extension Wrap<icalparameter_display> {
    
    /// ICAL_DISPLAY_X
    public static var X: Wrap<icalparameter_display> { .init(ICAL_DISPLAY_X) }
    /// ICAL_DISPLAY_BADGE
    public static var BADGE: Wrap<icalparameter_display> { .init(ICAL_DISPLAY_BADGE) }
    /// ICAL_DISPLAY_GRAPHIC
    public static var GRAPHIC: Wrap<icalparameter_display> { .init(ICAL_DISPLAY_GRAPHIC) }
    /// ICAL_DISPLAY_FULLSIZE
    public static var FULLSIZE: Wrap<icalparameter_display> { .init(ICAL_DISPLAY_FULLSIZE) }
    /// ICAL_DISPLAY_THUMBNAIL
    public static var THUMBNAIL: Wrap<icalparameter_display> { .init(ICAL_DISPLAY_THUMBNAIL) }
    /// ICAL_DISPLAY_NONE
    public static var NONE: Wrap<icalparameter_display> { .init(ICAL_DISPLAY_NONE) }
    
    /// [Wrap<icalparameter_display>]
    public static var allCases: [Wrap<icalparameter_display>] {
        return [X, BADGE, GRAPHIC, FULLSIZE, THUMBNAIL, NONE]
    }
}

// MARK: - Wrap<icalparameter_feature>
extension Wrap<icalparameter_feature> {
    
    /// ICAL_FEATURE_X
    public static var X: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_X) }
    /// ICAL_FEATURE_AUDIO
    public static var AUDIO: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_AUDIO) }
    /// ICAL_FEATURE_CHAT
    public static var CHAT: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_CHAT) }
    /// ICAL_FEATURE_FEED
    public static var FEED: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_FEED) }
    /// ICAL_FEATURE_MODERATOR
    public static var MODERATOR: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_MODERATOR) }
    /// ICAL_FEATURE_PHONE
    public static var PHONE: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_PHONE) }
    /// ICAL_FEATURE_SCREEN
    public static var SCREEN: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_SCREEN) }
    /// ICAL_FEATURE_VIDEO
    public static var VIDEO: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_VIDEO) }
    /// ICAL_FEATURE_NONE
    public static var NONE: Wrap<icalparameter_feature> { .init(ICAL_FEATURE_NONE) }
    
    /// [Wrap<icalparameter_feature>]
    public static var allCases: [Wrap<icalparameter_feature>] {
        return [X, AUDIO, CHAT, FEED, MODERATOR, PHONE, SCREEN, VIDEO, NONE]
    }
}

// MARK: - Wrap<icalparameter_related>
extension Wrap<icalparameter_related> {
    
    /// ICAL_RELATED_X
    public static var X: Wrap<icalparameter_related> { .init(ICAL_RELATED_X) }
    /// ICAL_RELATED_START
    public static var START: Wrap<icalparameter_related> { .init(ICAL_RELATED_START) }
    /// ICAL_RELATED_END
    public static var END: Wrap<icalparameter_related> { .init(ICAL_RELATED_END) }
    /// ICAL_RELATED_NONE
    public static var NONE: Wrap<icalparameter_related> { .init(ICAL_RELATED_NONE) }
    
    /// [Wrap<icalparameter_related>]
    public static var allCases: [Wrap<icalparameter_related>] {
        return [X, START, END, NONE]
    }
}

// MARK: - Wrap<icalparameter_reltype>
extension Wrap<icalparameter_reltype> {
    
    /// ICAL_RELTYPE_X
    public static var X: Wrap<icalparameter_reltype> { .init(ICAL_RELTYPE_X) }
    /// ICAL_RELTYPE_PARENT
    public static var PARENT: Wrap<icalparameter_reltype> { .init(ICAL_RELTYPE_PARENT) }
    /// ICAL_RELTYPE_CHILD
    public static var CHILD: Wrap<icalparameter_reltype> { .init(ICAL_RELTYPE_CHILD) }
    /// ICAL_RELTYPE_SIBLING
    public static var SIBLING: Wrap<icalparameter_reltype> { .init(ICAL_RELTYPE_SIBLING) }
    /// ICAL_RELTYPE_POLL
    public static var POLL: Wrap<icalparameter_reltype> { .init(ICAL_RELTYPE_POLL) }
    /// ICAL_RELTYPE_NONE
    public static var NONE: Wrap<icalparameter_reltype> { .init(ICAL_RELTYPE_NONE) }
    
    /// [Wrap<icalparameter_reltype>]
    public static var allCases: [Wrap<icalparameter_reltype>] {
        return [X, PARENT, CHILD, SIBLING, POLL, NONE]
    }
}

// MARK: - Wrap<icalparameter_encoding>
extension Wrap<icalparameter_encoding> {
    
    /// ICAL_ENCODING_X
    public static var X: Wrap<icalparameter_encoding> { .init(ICAL_ENCODING_X) }
    /// ICAL_ENCODING_8BIT
    public static var BIT8: Wrap<icalparameter_encoding> { .init(ICAL_ENCODING_8BIT) }
    /// ICAL_ENCODING_BASE64
    public static var BASE64: Wrap<icalparameter_encoding> { .init(ICAL_ENCODING_BASE64) }
    /// ICAL_ENCODING_NONE
    public static var NONE: Wrap<icalparameter_encoding> { .init(ICAL_ENCODING_NONE) }
    
    /// [Wrap<icalparameter_encoding>]
    public static var allCases: [Wrap<icalparameter_encoding>] {
        return [X, BIT8, BASE64, NONE]
    }
}

// MARK: - Wrap<icalparameter_partstat>
extension Wrap<icalparameter_partstat> {
    
    /// ICAL_PARTSTAT_X
    public static var X: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_X) }
    /// ICAL_PARTSTAT_NEEDSACTION
    public static var NEEDSACTION: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_NEEDSACTION) }
    /// ICAL_PARTSTAT_ACCEPTED
    public static var ACCEPTED: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_ACCEPTED) }
    /// ICAL_PARTSTAT_DECLINED
    public static var DECLINED: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_DECLINED) }
    /// ICAL_PARTSTAT_TENTATIVE
    public static var TENTATIVE: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_TENTATIVE) }
    /// ICAL_PARTSTAT_DELEGATED
    public static var DELEGATED: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_DELEGATED) }
    /// ICAL_PARTSTAT_COMPLETED
    public static var COMPLETED: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_COMPLETED) }
    /// ICAL_PARTSTAT_INPROCESS
    public static var INPROCESS: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_INPROCESS) }
    /// ICAL_PARTSTAT_FAILED
    public static var FAILED: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_FAILED) }
    /// ICAL_PARTSTAT_NONE
    public static var NONE: Wrap<icalparameter_partstat> { .init(ICAL_PARTSTAT_NONE) }
    
    /// [Wrap<icalparameter_partstat>]
    public static var allCases: [Wrap<icalparameter_partstat>] {
        return [X, NEEDSACTION, ACCEPTED, DECLINED, TENTATIVE, DELEGATED, COMPLETED, INPROCESS, FAILED, NONE]
    }
}

// MARK: - Wrap<icalparameter_required>
extension Wrap<icalparameter_required>{
    
    /// ICAL_REQUIRED_X
    public static var X: Wrap<icalparameter_required>{ .init(ICAL_REQUIRED_X) }
    /// ICAL_REQUIRED_TRUE
    public static var TRUE: Wrap<icalparameter_required>{ .init(ICAL_REQUIRED_TRUE) }
    /// ICAL_REQUIRED_FALSE
    public static var FALSE: Wrap<icalparameter_required>{ .init(ICAL_REQUIRED_FALSE) }
    /// ICAL_REQUIRED_NONE
    public static var NONE: Wrap<icalparameter_required>{ .init(ICAL_REQUIRED_NONE) }
    
    /// [Wrap<icalparameter_required>]
    public static var allCases: [Wrap<icalparameter_required>] {
        return [X, TRUE, FALSE, NONE]
    }
}

// MARK: - Wrap<icalparameter_substate>
extension Wrap<icalparameter_substate> {
    
    /// ICAL_SUBSTATE_X
    public static var X: Wrap<icalparameter_substate> { .init(ICAL_SUBSTATE_X) }
    /// ICAL_SUBSTATE_OK
    public static var OK: Wrap<icalparameter_substate> { .init(ICAL_SUBSTATE_OK) }
    /// ICAL_SUBSTATE_ERROR
    public static var ERROR: Wrap<icalparameter_substate> { .init(ICAL_SUBSTATE_ERROR) }
    /// ICAL_SUBSTATE_SUSPENDED
    public static var SUSPENDED: Wrap<icalparameter_substate> { .init(ICAL_SUBSTATE_SUSPENDED) }
    /// ICAL_SUBSTATE_NONE
    public static var NONE: Wrap<icalparameter_substate> { .init(ICAL_SUBSTATE_NONE) }
    
    /// [Wrap<icalparameter_substate>]
    public static var allCases: [Wrap<icalparameter_substate>] {
        return [X, OK, ERROR, SUSPENDED, NONE]
    }
}

// MARK: - Wrap<icalparameter_patchaction>
extension Wrap<icalparameter_patchaction> {
    
    /// ICAL_PATCHACTION_X
    public static var X: Wrap<icalparameter_patchaction> { .init(ICAL_PATCHACTION_X) }
    /// ICAL_PATCHACTION_CREATE
    public static var CREATE: Wrap<icalparameter_patchaction> { .init(ICAL_PATCHACTION_CREATE) }
    /// ICAL_PATCHACTION_BYNAME
    public static var BYNAME: Wrap<icalparameter_patchaction> { .init(ICAL_PATCHACTION_BYNAME) }
    /// ICAL_PATCHACTION_BYVALUE
    public static var BYVALUE: Wrap<icalparameter_patchaction> { .init(ICAL_PATCHACTION_BYVALUE) }
    /// ICAL_PATCHACTION_BYPARAM
    public static var BYPARAM: Wrap<icalparameter_patchaction> { .init(ICAL_PATCHACTION_BYPARAM) }
    /// ICAL_PATCHACTION_NONE
    public static var NONE: Wrap<icalparameter_patchaction> { .init(ICAL_PATCHACTION_NONE) }
    
    /// [Wrap<icalparameter_patchaction>]
    public static var allCases: [Wrap<icalparameter_patchaction>] {
        return [X, CREATE, BYNAME, BYVALUE, BYPARAM, NONE]
    }
}

// MARK: - Wrap<icalparameter_stayinformed>
extension Wrap<icalparameter_stayinformed> {
    
    /// ICAL_STAYINFORMED_X
    public static var X: Wrap<icalparameter_stayinformed> { .init(ICAL_STAYINFORMED_X) }
    /// ICAL_STAYINFORMED_TRUE
    public static var TRUE: Wrap<icalparameter_stayinformed> { .init(ICAL_STAYINFORMED_TRUE) }
    /// ICAL_STAYINFORMED_FALSE
    public static var FALSE: Wrap<icalparameter_stayinformed> { .init(ICAL_STAYINFORMED_FALSE) }
    /// ICAL_STAYINFORMED_NONE
    public static var NONE: Wrap<icalparameter_stayinformed> { .init(ICAL_STAYINFORMED_NONE) }
    
    /// [Wrap<icalparameter_stayinformed>]
    public static var allCases: [Wrap<icalparameter_stayinformed>] {
        return [X, TRUE, FALSE, NONE]
    }
}

// MARK: - Wrap<icalparameter_scheduleagent>
extension Wrap<icalparameter_scheduleagent> {
    
    /// ICAL_SCHEDULEAGENT_X
    public static var X: Wrap<icalparameter_scheduleagent> { .init(ICAL_SCHEDULEAGENT_X) }
    /// ICAL_SCHEDULEAGENT_SERVER
    public static var SERVER: Wrap<icalparameter_scheduleagent> { .init(ICAL_SCHEDULEAGENT_SERVER) }
    /// ICAL_SCHEDULEAGENT_CLIENT
    public static var CLIENT: Wrap<icalparameter_scheduleagent> { .init(ICAL_SCHEDULEAGENT_CLIENT) }
    /// ICAL_SCHEDULEAGENT_NONE
    public static var NONE: Wrap<icalparameter_scheduleagent> { .init(ICAL_SCHEDULEAGENT_NONE) }
    
    /// [Wrap<icalparameter_scheduleagent>]
    public static var allCases: [Wrap<icalparameter_scheduleagent>] {
        return [X, SERVER, CLIENT, NONE]
    }
}

// MARK: - Wrap<icalparameter_xlicerrortype>
extension Wrap<icalparameter_xlicerrortype> {
    
    /// ICAL_XLICERRORTYPE_X
    public static var X: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_X) }
    /// ICAL_XLICERRORTYPE_COMPONENTPARSEERROR
    public static var COMPONENTPARSEERROR: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_COMPONENTPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PROPERTYPARSEERROR
    public static var PROPERTYPARSEERROR: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_PROPERTYPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR
    public static var PARAMETERNAMEPARSEERROR: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR
    public static var PARAMETERVALUEPARSEERROR: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_VALUEPARSEERROR
    public static var VALUEPARSEERROR: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_VALUEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_INVALIDITIP
    public static var INVALIDITIP: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_INVALIDITIP) }
    /// ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR
    public static var UNKNOWNVCALPROPERROR: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR) }
    /// ICAL_XLICERRORTYPE_MIMEPARSEERROR
    public static var MIMEPARSEERROR: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_MIMEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_VCALPROPPARSEERROR
    public static var VCALPROPPARSEERROR: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_VCALPROPPARSEERROR) }
    /// ICAL_XLICERRORTYPE_NONE
    public static var NONE: Wrap<icalparameter_xlicerrortype> { .init(ICAL_XLICERRORTYPE_NONE) }
    
    /// [Wrap<icalparameter_xlicerrortype>]
    public static var allCases: [Wrap<icalparameter_xlicerrortype>] {
        return [X, COMPONENTPARSEERROR, PROPERTYPARSEERROR, PARAMETERNAMEPARSEERROR, PARAMETERVALUEPARSEERROR, VALUEPARSEERROR,
                INVALIDITIP, UNKNOWNVCALPROPERROR, MIMEPARSEERROR, VCALPROPPARSEERROR, NONE]
    }
}

// MARK: - Wrap<icalparameter_xliccomparetype>
extension Wrap<icalparameter_xliccomparetype> {
    
    /// ICAL_XLICCOMPARETYPE_X
    public static var X: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_X) }
    /// ICAL_XLICCOMPARETYPE_EQUAL
    public static var EQUAL: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_EQUAL) }
    /// ICAL_XLICCOMPARETYPE_NOTEQUAL
    public static var NOTEQUAL: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_NOTEQUAL) }
    /// ICAL_XLICCOMPARETYPE_LESS
    public static var LESS: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_LESS) }
    /// ICAL_XLICCOMPARETYPE_GREATER
    public static var GREATER: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_GREATER) }
    /// ICAL_XLICCOMPARETYPE_LESSEQUAL
    public static var LESSEQUAL: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_LESSEQUAL) }
    /// ICAL_XLICCOMPARETYPE_GREATEREQUAL
    public static var GREATEREQUAL: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_GREATEREQUAL) }
    /// ICAL_XLICCOMPARETYPE_REGEX
    public static var REGEX: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_REGEX) }
    /// ICAL_XLICCOMPARETYPE_ISNULL
    public static var ISNULL: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_ISNULL) }
    /// ICAL_XLICCOMPARETYPE_ISNOTNULL
    public static var ISNOTNULL: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_ISNOTNULL) }
    /// ICAL_XLICCOMPARETYPE_NONE
    public static var NONE: Wrap<icalparameter_xliccomparetype> { .init(ICAL_XLICCOMPARETYPE_NONE) }
    
    /// [Wrap<icalparameter_xliccomparetype>]
    public static var allCases: [Wrap<icalparameter_xliccomparetype>] {
        return [X, EQUAL, NOTEQUAL, LESS, GREATER, LESSEQUAL, GREATEREQUAL, REGEX, ISNULL, ISNOTNULL, NONE]
    }
}

// MARK: - Wrap<icalparameter_scheduleforcesend>
extension Wrap<icalparameter_scheduleforcesend> {
    
    /// ICAL_SCHEDULEFORCESEND_X
    public static var X: Wrap<icalparameter_scheduleforcesend> { .init(ICAL_SCHEDULEFORCESEND_X) }
    /// ICAL_SCHEDULEFORCESEND_REQUEST
    public static var REQUEST: Wrap<icalparameter_scheduleforcesend> { .init(ICAL_SCHEDULEFORCESEND_REQUEST) }
    /// ICAL_SCHEDULEFORCESEND_REPLY
    public static var REPLY: Wrap<icalparameter_scheduleforcesend> { .init(ICAL_SCHEDULEFORCESEND_REPLY) }
    /// ICAL_SCHEDULEFORCESEND_NONE
    public static var NONE: Wrap<icalparameter_scheduleforcesend> { .init(ICAL_SCHEDULEFORCESEND_NONE) }
    
    /// [Wrap<icalparameter_scheduleforcesend>]
    public static var allCases: [Wrap<icalparameter_scheduleforcesend>] {
        return [X, REQUEST, REPLY, NONE]
    }
}
