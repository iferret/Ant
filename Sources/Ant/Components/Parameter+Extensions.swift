//
//  Parameter+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

extension Parameter {
    /// Wrap<icalparameter_kind>
    public typealias Kind = Wrap<icalparameter_kind>
    /// Wrap<icalparameter_role>
    public typealias Role = Wrap<icalparameter_role>
    /// Wrap<icalparameter_rsvp>
    public typealias Rsvp = Wrap<icalparameter_rsvp>
    /// Wrap<icalparameter_local>
    public typealias Local = Wrap<icalparameter_local>
    /// Wrap<icalparameter_range>
    public typealias Range = Wrap<icalparameter_range>
    /// Wrap<icalparameter_value>
    public typealias Value = Wrap<icalparameter_value>
    /// Wrap<icalparameter_action>
    public typealias Action = Wrap<icalparameter_action>
    /// Wrap<icalparameter_cutype>
    public typealias CuType = Wrap<icalparameter_cutype>
    /// Wrap<icalparameter_enable>
    public typealias Enable = Wrap<icalparameter_enable>
    /// Wrap<icalparameter_fbtype>
    public typealias FBType = Wrap<icalparameter_fbtype>
    /// Wrap<icalparameter_display>
    public typealias Display = Wrap<icalparameter_display>
    /// Wrap<icalparameter_feature>
    public typealias Feature = Wrap<icalparameter_feature>
    /// Wrap<icalparameter_related>
    public typealias Related = Wrap<icalparameter_related>
    /// Wrap<icalparameter_reltype>
    public typealias RelType = Wrap<icalparameter_reltype>
    /// Wrap<icalparameter_encoding>
    public typealias Encoding = Wrap<icalparameter_encoding>
    /// Wrap<icalparameter_partstat>
    public typealias Partstat = Wrap<icalparameter_partstat>
    /// Wrap<icalparameter_required>
    public typealias Required = Wrap<icalparameter_required>
    /// Wrap<icalparameter_substate>
    public typealias SubState = Wrap<icalparameter_substate>
    /// Wrap<icalparameter_patchaction>
    public typealias PatchAction = Wrap<icalparameter_patchaction>
    /// Wrap<icalparameter_stayinformed>
    public typealias StayInformed = Wrap<icalparameter_stayinformed>
    /// Wrap<icalparameter_scheduleagent>
    public typealias ScheduleAgent = Wrap<icalparameter_scheduleagent>
    /// Wrap<icalparameter_xlicerrortype>
    public typealias xlicErrorType = Wrap<icalparameter_xlicerrortype>
    /// Wrap<icalparameter_xliccomparetype>
    public typealias xlicCompareType = Wrap<icalparameter_xliccomparetype>
    /// Wrap<icalparameter_scheduleforcesend>
    public typealias ScheduleForceSend = Wrap<icalparameter_scheduleforcesend>
}

// MARK: - Wrap<icalparameter_kind>
extension Parameter.Kind {
    /// ICAL_ANY_PARAMETER
    public static var ANY: Parameter.Kind { .init(ICAL_ANY_PARAMETER) }
    /// ICAL_ACTIONPARAM_PARAMETER
    public static var ACTIONPARAM: Parameter.Kind { .init(ICAL_ACTIONPARAM_PARAMETER) }
    /// ICAL_ALTREP_PARAMETER
    public static var ALTREP: Parameter.Kind { .init(ICAL_ALTREP_PARAMETER) }
    /// ICAL_CHARSET_PARAMETER
    public static var CHARSET: Parameter.Kind { .init(ICAL_CHARSET_PARAMETER) }
    /// ICAL_CN_PARAMETER
    public static var CN: Parameter.Kind { .init(ICAL_CN_PARAMETER) }
    /// ICAL_CUTYPE_PARAMETER
    public static var CUTYPE: Parameter.Kind { .init(ICAL_CUTYPE_PARAMETER) }
    /// ICAL_DELEGATEDFROM_PARAMETER
    public static var DELEGATEDFROM: Parameter.Kind { .init(ICAL_DELEGATEDFROM_PARAMETER) }
    /// ICAL_DELEGATEDTO_PARAMETER
    public static var DELEGATEDTO: Parameter.Kind { .init(ICAL_DELEGATEDTO_PARAMETER) }
    /// ICAL_DIR_PARAMETER
    public static var DIR: Parameter.Kind { .init(ICAL_DIR_PARAMETER) }
    /// ICAL_DISPLAY_PARAMETER
    public static var DISPLAY: Parameter.Kind { .init(ICAL_DISPLAY_PARAMETER) }
    /// ICAL_EMAIL_PARAMETER
    public static var EMAIL: Parameter.Kind { .init(ICAL_EMAIL_PARAMETER) }
    /// ICAL_ENABLE_PARAMETER
    public static var ENABLE: Parameter.Kind { .init(ICAL_ENABLE_PARAMETER) }
    /// ICAL_ENCODING_PARAMETER
    public static var ENCODING: Parameter.Kind { .init(ICAL_ENCODING_PARAMETER) }
    /// ICAL_FBTYPE_PARAMETER
    public static var FBTYPE: Parameter.Kind { .init(ICAL_FBTYPE_PARAMETER) }
    /// ICAL_FEATURE_PARAMETER
    public static var FEATURE: Parameter.Kind { .init(ICAL_FEATURE_PARAMETER) }
    /// ICAL_FILENAME_PARAMETER
    public static var FILENAME: Parameter.Kind { .init(ICAL_FILENAME_PARAMETER) }
    /// ICAL_FMTTYPE_PARAMETER
    public static var FMTTYPE: Parameter.Kind { .init(ICAL_FMTTYPE_PARAMETER) }
    /// ICAL_IANA_PARAMETER
    public static var IANA: Parameter.Kind { .init(ICAL_IANA_PARAMETER) }
    /// ICAL_ID_PARAMETER
    public static var ID: Parameter.Kind { .init(ICAL_ID_PARAMETER) }
    /// ICAL_LABEL_PARAMETER
    public static var LABEL: Parameter.Kind { .init(ICAL_LABEL_PARAMETER) }
    /// ICAL_LANGUAGE_PARAMETER
    public static var LANGUAGE: Parameter.Kind { .init(ICAL_LANGUAGE_PARAMETER) }
    /// ICAL_LATENCY_PARAMETER
    public static var LATENCY: Parameter.Kind { .init(ICAL_LATENCY_PARAMETER) }
    /// ICAL_LOCAL_PARAMETER
    public static var LOCAL: Parameter.Kind { .init(ICAL_LOCAL_PARAMETER) }
    /// ICAL_LOCALIZE_PARAMETER
    public static var LOCALIZE: Parameter.Kind { .init(ICAL_LOCALIZE_PARAMETER) }
    /// ICAL_MANAGEDID_PARAMETER
    public static var MANAGEDID: Parameter.Kind { .init(ICAL_MANAGEDID_PARAMETER) }
    /// ICAL_MEMBER_PARAMETER
    public static var MEMBER: Parameter.Kind { .init(ICAL_MEMBER_PARAMETER) }
    /// ICAL_MODIFIED_PARAMETER
    public static var MODIFIED: Parameter.Kind { .init(ICAL_MODIFIED_PARAMETER) }
    /// ICAL_OPTIONS_PARAMETER
    public static var OPTIONS: Parameter.Kind { .init(ICAL_OPTIONS_PARAMETER) }
    /// ICAL_PARTSTAT_PARAMETER
    public static var PARTSTAT: Parameter.Kind { .init(ICAL_PARTSTAT_PARAMETER) }
    /// ICAL_PATCHACTION_PARAMETER
    public static var PATCHACTION: Parameter.Kind { .init(ICAL_PATCHACTION_PARAMETER) }
    /// ICAL_PUBLICCOMMENT_PARAMETER
    public static var PUBLICCOMMENT: Parameter.Kind { .init(ICAL_PUBLICCOMMENT_PARAMETER) }
    /// ICAL_RANGE_PARAMETER
    public static var RANGE: Parameter.Kind { .init(ICAL_RANGE_PARAMETER) }
    /// ICAL_REASON_PARAMETER
    public static var REASON: Parameter.Kind { .init(ICAL_REASON_PARAMETER) }
    /// ICAL_RELATED_PARAMETER
    public static var RELATED: Parameter.Kind { .init(ICAL_RELATED_PARAMETER) }
    /// ICAL_RELTYPE_PARAMETER
    public static var RELTYPE: Parameter.Kind { .init(ICAL_RELTYPE_PARAMETER) }
    /// ICAL_REQUIRED_PARAMETER
    public static var REQUIRED: Parameter.Kind { .init(ICAL_REQUIRED_PARAMETER) }
    /// ICAL_RESPONSE_PARAMETER
    public static var RESPONSE: Parameter.Kind { .init(ICAL_RESPONSE_PARAMETER) }
    /// ICAL_ROLE_PARAMETER
    public static var ROLE: Parameter.Kind { .init(ICAL_ROLE_PARAMETER) }
    /// ICAL_RSVP_PARAMETER
    public static var RSVP: Parameter.Kind { .init(ICAL_RSVP_PARAMETER) }
    /// ICAL_SCHEDULEAGENT_PARAMETER
    public static var SCHEDULEAGENT: Parameter.Kind { .init(ICAL_SCHEDULEAGENT_PARAMETER) }
    /// ICAL_SCHEDULEFORCESEND_PARAMETER
    public static var SCHEDULEFORCESEND: Parameter.Kind { .init(ICAL_SCHEDULEFORCESEND_PARAMETER) }
    /// ICAL_SCHEDULESTATUS_PARAMETER
    public static var SCHEDULESTATUS: Parameter.Kind { .init(ICAL_SCHEDULESTATUS_PARAMETER) }
    /// ICAL_SENTBY_PARAMETER
    public static var SENTBY: Parameter.Kind { .init(ICAL_SENTBY_PARAMETER) }
    /// ICAL_SIZE_PARAMETER
    public static var SIZE: Parameter.Kind { .init(ICAL_SIZE_PARAMETER) }
    /// ICAL_STAYINFORMED_PARAMETER
    public static var STAYINFORMED: Parameter.Kind { .init(ICAL_STAYINFORMED_PARAMETER) }
    /// ICAL_SUBSTATE_PARAMETER
    public static var SUBSTATE: Parameter.Kind { .init(ICAL_SUBSTATE_PARAMETER) }
    /// ICAL_TZID_PARAMETER
    public static var TZID: Parameter.Kind { .init(ICAL_TZID_PARAMETER) }
    /// ICAL_VALUE_PARAMETER
    public static var VALUE: Parameter.Kind { .init(ICAL_VALUE_PARAMETER) }
    /// ICAL_X_PARAMETER
    public static var X: Parameter.Kind { .init(ICAL_X_PARAMETER) }
    /// ICAL_XLICCOMPARETYPE_PARAMETER
    public static var XLICCOMPARETYPE: Parameter.Kind { .init(ICAL_XLICCOMPARETYPE_PARAMETER) }
    /// ICAL_XLICERRORTYPE_PARAMETER
    public static var XLICERRORTYPE: Parameter.Kind { .init(ICAL_XLICERRORTYPE_PARAMETER) }
    /// ICAL_NO_PARAMETER
    public static var NO: Parameter.Kind { .init(ICAL_NO_PARAMETER) }
    /// [Parameter.Kind]
    public static var allCases: [Parameter.Kind] {
        return [ANY, ACTIONPARAM, ALTREP, CHARSET, CN, CUTYPE, DELEGATEDFROM, DELEGATEDTO, DIR, DISPLAY, EMAIL, ENABLE, ENCODING, FBTYPE, FEATURE, FILENAME, FMTTYPE, IANA, ID, LABEL, LANGUAGE, LATENCY, LOCAL, LOCALIZE, MANAGEDID, MEMBER, MODIFIED, OPTIONS, PARTSTAT, PATCHACTION, PUBLICCOMMENT, RANGE, REASON, RELATED, RELTYPE, REQUIRED, RESPONSE, ROLE, RSVP, SCHEDULEAGENT, SCHEDULEFORCESEND, SCHEDULESTATUS, SENTBY, SIZE, STAYINFORMED, SUBSTATE, TZID, VALUE, X, XLICCOMPARETYPE, XLICERRORTYPE, NO]
    }
}

// MARK: - Wrap<icalparameter_role>
extension Parameter.Role {
    /// ICAL_ROLE_X
    public static var X: Parameter.Role { .init(ICAL_ROLE_X) }
    /// ICAL_ROLE_CHAIR
    public static var CHAIR: Parameter.Role { .init(ICAL_ROLE_CHAIR) }
    /// ICAL_ROLE_REQPARTICIPANT
    public static var REQPARTICIPANT: Parameter.Role { .init(ICAL_ROLE_REQPARTICIPANT) }
    /// ICAL_ROLE_OPTPARTICIPANT
    public static var OPTPARTICIPANT: Parameter.Role { .init(ICAL_ROLE_OPTPARTICIPANT) }
    /// ICAL_ROLE_NONPARTICIPANT
    public static var NONPARTICIPANT: Parameter.Role { .init(ICAL_ROLE_NONPARTICIPANT) }
    /// ICAL_ROLE_NONE
    public static var NONE: Parameter.Role { .init(ICAL_ROLE_NONE) }
    /// [Parameter.Role]
    public static var allCases: [Parameter.Role] {
        return [X, CHAIR, REQPARTICIPANT, OPTPARTICIPANT, NONPARTICIPANT, NONE]
    }
    
}

// MARK: - Wrap<icalparameter_rsvp>
extension Parameter.Rsvp {
    /// ICAL_RSVP_X
    public static var X: Parameter.Rsvp { .init(ICAL_RSVP_X) }
    /// ICAL_RSVP_TRUE
    public static var TRUE: Parameter.Rsvp { .init(ICAL_RSVP_TRUE) }
    /// ICAL_RSVP_FALSE
    public static var FALSE: Parameter.Rsvp { .init(ICAL_RSVP_FALSE) }
    /// ICAL_RSVP_NONE
    public static var NONE: Parameter.Rsvp { .init(ICAL_RSVP_NONE) }
    /// [Parameter.Rsvp]
    public static var allCases: [Parameter.Rsvp] {
        return [X, TRUE, FALSE, NONE]
    }
    
}

// MARK: - Wrap<icalparameter_local>
extension Parameter.Local {
    /// ICAL_LOCAL_X
    public static var X: Parameter.Local { .init(ICAL_LOCAL_X) }
    /// ICAL_LOCAL_TRUE
    public static var TRUE: Parameter.Local { .init(ICAL_LOCAL_TRUE) }
    /// ICAL_LOCAL_FALSE
    public static var FALSE: Parameter.Local { .init(ICAL_LOCAL_FALSE) }
    /// ICAL_LOCAL_NONE
    public static var NONE: Parameter.Local { .init(ICAL_LOCAL_NONE) }
    /// [Parameter.Local]
    public static var allCases: [Parameter.Local] {
        return [X, TRUE, FALSE, NONE]
    }
}

// MARK: - Wrap<icalparameter_range>
extension Parameter.Range {
    /// ICAL_RANGE_X
    public static var X: Parameter.Range { .init(ICAL_RANGE_X) }
    /// ICAL_RANGE_THISANDPRIOR
    public static var THISANDPRIOR: Parameter.Range { .init(ICAL_RANGE_THISANDPRIOR) }
    /// ICAL_RANGE_THISANDFUTURE
    public static var THISANDFUTURE: Parameter.Range { .init(ICAL_RANGE_THISANDFUTURE) }
    /// ICAL_RANGE_NONE
    public static var NONE: Parameter.Range { .init(ICAL_RANGE_NONE) }
    /// [Parameter.Range]
    public static var allCases: [Parameter.Range] {
        return [X, THISANDPRIOR, THISANDFUTURE, NONE]
    }
}

// MARK: - Wrap<icalparameter_value>
extension Parameter.Value {
    /// ICAL_VALUE_X
    public static var X: Parameter.Value { .init(ICAL_VALUE_X) }
    /// ICAL_VALUE_BINARY
    public static var BINARY: Parameter.Value { .init(ICAL_VALUE_BINARY) }
    /// ICAL_VALUE_BOOLEAN
    public static var BOOLEAN: Parameter.Value { .init(ICAL_VALUE_BOOLEAN) }
    /// ICAL_VALUE_DATE
    public static var DATE: Parameter.Value { .init(ICAL_VALUE_DATE) }
    /// ICAL_VALUE_DURATION
    public static var DURATION: Parameter.Value { .init(ICAL_VALUE_DURATION) }
    /// ICAL_VALUE_FLOAT
    public static var FLOAT: Parameter.Value { .init(ICAL_VALUE_FLOAT) }
    /// ICAL_VALUE_INTEGER
    public static var INTEGER: Parameter.Value { .init(ICAL_VALUE_INTEGER) }
    /// ICAL_VALUE_PERIOD
    public static var PERIOD: Parameter.Value { .init(ICAL_VALUE_PERIOD) }
    /// ICAL_VALUE_RECUR
    public static var RECUR: Parameter.Value { .init(ICAL_VALUE_RECUR) }
    /// ICAL_VALUE_TEXT
    public static var TEXT: Parameter.Value { .init(ICAL_VALUE_TEXT) }
    /// ICAL_VALUE_URI
    public static var URI: Parameter.Value { .init(ICAL_VALUE_URI) }
    /// ICAL_VALUE_ERROR
    public static var ERROR: Parameter.Value { .init(ICAL_VALUE_ERROR) }
    /// ICAL_VALUE_DATETIME
    public static var DATETIME: Parameter.Value { .init(ICAL_VALUE_DATETIME) }
    /// ICAL_VALUE_UTCOFFSET
    public static var UTCOFFSET: Parameter.Value { .init(ICAL_VALUE_UTCOFFSET) }
    /// ICAL_VALUE_CALADDRESS
    public static var CALADDRESS: Parameter.Value { .init(ICAL_VALUE_CALADDRESS) }
    /// ICAL_VALUE_NONE
    public static var NONE: Parameter.Value { .init(ICAL_VALUE_NONE) }
    /// [Parameter.Value]
    public static var allCases: [Parameter.Value] {
        return [X, BINARY, BOOLEAN, DATE, DURATION, FLOAT, INTEGER, PERIOD, RECUR, TEXT, URI, ERROR, DATETIME, UTCOFFSET, CALADDRESS, NONE]
    }
}

// MARK: - Wrap<icalparameter_action>
extension Parameter.Action {
    /// ICAL_ACTIONPARAM_X
    public static var X: Parameter.Action { .init(ICAL_ACTIONPARAM_X) }
    /// ICAL_ACTIONPARAM_ASK
    public static var ASK: Parameter.Action { .init(ICAL_ACTIONPARAM_ASK) }
    /// ICAL_ACTIONPARAM_ABORT
    public static var ABORT: Parameter.Action { .init(ICAL_ACTIONPARAM_ABORT) }
    /// ICAL_ACTIONPARAM_NONE
    public static var NONE: Parameter.Action { .init(ICAL_ACTIONPARAM_NONE) }
    /// [Parameter.Action]
    public static var allCases: [Parameter.Action] {
        return [X, ASK, ABORT, NONE]
    }
    
}

// MARK: - Wrap<icalparameter_cutype>
extension Parameter.CuType {
    /// ICAL_CUTYPE_X
    public static var X: Parameter.CuType { .init(ICAL_CUTYPE_X) }
    /// ICAL_CUTYPE_INDIVIDUAL
    public static var INDIVIDUAL: Parameter.CuType { .init(ICAL_CUTYPE_INDIVIDUAL) }
    /// ICAL_CUTYPE_GROUP
    public static var GROUP: Parameter.CuType { .init(ICAL_CUTYPE_GROUP) }
    /// ICAL_CUTYPE_RESOURCE
    public static var RESOURCE: Parameter.CuType { .init(ICAL_CUTYPE_RESOURCE) }
    /// ICAL_CUTYPE_ROOM
    public static var ROOM: Parameter.CuType { .init(ICAL_CUTYPE_ROOM) }
    /// ICAL_CUTYPE_UNKNOWN
    public static var UNKNOWN: Parameter.CuType { .init(ICAL_CUTYPE_UNKNOWN) }
    /// ICAL_CUTYPE_NONE
    public static var NONE: Parameter.CuType { .init(ICAL_CUTYPE_NONE) }
    /// [Parameter.CuType]
    public static var allCases: [Parameter.CuType] {
        return [X, INDIVIDUAL, GROUP, RESOURCE, ROOM, UNKNOWN, NONE]
    }
}

// MARK: - Wrap<icalparameter_enable>
extension Parameter.Enable {
    /// ICAL_ENABLE_X
    public static var X: Parameter.Enable { .init(ICAL_ENABLE_X) }
    /// ICAL_ENABLE_TRUE
    public static var TRUE: Parameter.Enable { .init(ICAL_ENABLE_TRUE) }
    /// ICAL_ENABLE_FALSE
    public static var FALSE: Parameter.Enable { .init(ICAL_ENABLE_FALSE) }
    /// ICAL_ENABLE_NONE
    public static var NONE: Parameter.Enable { .init(ICAL_ENABLE_NONE) }
    /// [Parameter.Enable]
    public static var allCases: [Parameter.Enable] {
        return [X, TRUE, FALSE, NONE]
    }
}

// MARK: - Wrap<icalparameter_fbtype>
extension Parameter.FBType {
    /// ICAL_FBTYPE_X
    public static var X: Parameter.FBType { .init(ICAL_FBTYPE_X) }
    /// ICAL_FBTYPE_FREE
    public static var FREE: Parameter.FBType { .init(ICAL_FBTYPE_FREE) }
    /// ICAL_FBTYPE_BUSY
    public static var BUSY: Parameter.FBType { .init(ICAL_FBTYPE_BUSY) }
    /// ICAL_FBTYPE_BUSYUNAVAILABLE
    public static var BUSYUNAVAILABLE: Parameter.FBType { .init(ICAL_FBTYPE_BUSYUNAVAILABLE) }
    /// ICAL_FBTYPE_BUSYTENTATIVE
    public static var BUSYTENTATIVE: Parameter.FBType { .init(ICAL_FBTYPE_BUSYTENTATIVE) }
    /// ICAL_FBTYPE_NONE
    public static var NONE: Parameter.FBType { .init(ICAL_FBTYPE_NONE) }
    /// [Parameter.FBType]
    public static var allCases: [Parameter.FBType] {
        return [X, FREE, BUSY, BUSYUNAVAILABLE, BUSYTENTATIVE, NONE]
    }
}

// MARK: - Wrap<icalparameter_display>
extension Parameter.Display {
    /// ICAL_DISPLAY_X
    public static var X: Parameter.Display { .init(ICAL_DISPLAY_X) }
    /// ICAL_DISPLAY_BADGE
    public static var BADGE: Parameter.Display { .init(ICAL_DISPLAY_BADGE) }
    /// ICAL_DISPLAY_GRAPHIC
    public static var GRAPHIC: Parameter.Display { .init(ICAL_DISPLAY_GRAPHIC) }
    /// ICAL_DISPLAY_FULLSIZE
    public static var FULLSIZE: Parameter.Display { .init(ICAL_DISPLAY_FULLSIZE) }
    /// ICAL_DISPLAY_THUMBNAIL
    public static var THUMBNAIL: Parameter.Display { .init(ICAL_DISPLAY_THUMBNAIL) }
    /// ICAL_DISPLAY_NONE
    public static var NONE: Parameter.Display { .init(ICAL_DISPLAY_NONE) }
    /// [Parameter.Display]
    public static var allCases: [Parameter.Display] {
        return [X, BADGE, GRAPHIC, FULLSIZE, THUMBNAIL, NONE]
    }
}

// MARK: - Wrap<icalparameter_feature>
extension Parameter.Feature {
    /// ICAL_FEATURE_X
    public static var X: Parameter.Feature { .init(ICAL_FEATURE_X) }
    /// ICAL_FEATURE_AUDIO
    public static var AUDIO: Parameter.Feature { .init(ICAL_FEATURE_AUDIO) }
    /// ICAL_FEATURE_CHAT
    public static var CHAT: Parameter.Feature { .init(ICAL_FEATURE_CHAT) }
    /// ICAL_FEATURE_FEED
    public static var FEED: Parameter.Feature { .init(ICAL_FEATURE_FEED) }
    /// ICAL_FEATURE_MODERATOR
    public static var MODERATOR: Parameter.Feature { .init(ICAL_FEATURE_MODERATOR) }
    /// ICAL_FEATURE_PHONE
    public static var PHONE: Parameter.Feature { .init(ICAL_FEATURE_PHONE) }
    /// ICAL_FEATURE_SCREEN
    public static var SCREEN: Parameter.Feature { .init(ICAL_FEATURE_SCREEN) }
    /// ICAL_FEATURE_VIDEO
    public static var VIDEO: Parameter.Feature { .init(ICAL_FEATURE_VIDEO) }
    /// ICAL_FEATURE_NONE
    public static var NONE: Parameter.Feature { .init(ICAL_FEATURE_NONE) }
    /// [Parameter.Feature]
    public static var allCases: [Parameter.Feature] {
        return [X, AUDIO, CHAT, FEED, MODERATOR, PHONE, SCREEN, VIDEO, NONE]
    }
}

// MARK: - Wrap<icalparameter_related>
extension Parameter.Related {
    /// ICAL_RELATED_X
    public static var X: Parameter.Related { .init(ICAL_RELATED_X) }
    /// ICAL_RELATED_START
    public static var START: Parameter.Related { .init(ICAL_RELATED_START) }
    /// ICAL_RELATED_END
    public static var END: Parameter.Related { .init(ICAL_RELATED_END) }
    /// ICAL_RELATED_NONE
    public static var NONE: Parameter.Related { .init(ICAL_RELATED_NONE) }
    /// [Parameter.Related]
    public static var allCases: [Parameter.Related] {
        return [X, START, END, NONE]
    }
}

// MARK: - Wrap<icalparameter_reltype>
extension Parameter.RelType {
    /// ICAL_RELTYPE_X
    public static var X: Parameter.RelType { .init(ICAL_RELTYPE_X) }
    /// ICAL_RELTYPE_PARENT
    public static var PARENT: Parameter.RelType { .init(ICAL_RELTYPE_PARENT) }
    /// ICAL_RELTYPE_CHILD
    public static var CHILD: Parameter.RelType { .init(ICAL_RELTYPE_CHILD) }
    /// ICAL_RELTYPE_SIBLING
    public static var SIBLING: Parameter.RelType { .init(ICAL_RELTYPE_SIBLING) }
    /// ICAL_RELTYPE_POLL
    public static var POLL: Parameter.RelType { .init(ICAL_RELTYPE_POLL) }
    /// ICAL_RELTYPE_NONE
    public static var NONE: Parameter.RelType { .init(ICAL_RELTYPE_NONE) }
    /// [Parameter.RelType]
    public static var allCases: [Parameter.RelType] {
        return [X, PARENT, CHILD, SIBLING, POLL, NONE]
    }
}

// MARK: - Wrap<icalparameter_encoding>
extension Parameter.Encoding {
    /// ICAL_ENCODING_X
    public static var X: Parameter.Encoding { .init(ICAL_ENCODING_X) }
    /// ICAL_ENCODING_8BIT
    public static var BIT8: Parameter.Encoding { .init(ICAL_ENCODING_8BIT) }
    /// ICAL_ENCODING_BASE64
    public static var BASE64: Parameter.Encoding { .init(ICAL_ENCODING_BASE64) }
    /// ICAL_ENCODING_NONE
    public static var NONE: Parameter.Encoding { .init(ICAL_ENCODING_NONE) }
    /// [Parameter.Encoding]
    public static var allCases: [Parameter.Encoding] {
        return [X, BIT8, BASE64, NONE]
    }
}

// MARK: - Wrap<icalparameter_partstat>
extension Parameter.Partstat {
    /// ICAL_PARTSTAT_X
    public static var X: Parameter.Partstat { .init(ICAL_PARTSTAT_X) }
    /// ICAL_PARTSTAT_NEEDSACTION
    public static var NEEDSACTION: Parameter.Partstat { .init(ICAL_PARTSTAT_NEEDSACTION) }
    /// ICAL_PARTSTAT_ACCEPTED
    public static var ACCEPTED: Parameter.Partstat { .init(ICAL_PARTSTAT_ACCEPTED) }
    /// ICAL_PARTSTAT_DECLINED
    public static var DECLINED: Parameter.Partstat { .init(ICAL_PARTSTAT_DECLINED) }
    /// ICAL_PARTSTAT_TENTATIVE
    public static var TENTATIVE: Parameter.Partstat { .init(ICAL_PARTSTAT_TENTATIVE) }
    /// ICAL_PARTSTAT_DELEGATED
    public static var DELEGATED: Parameter.Partstat { .init(ICAL_PARTSTAT_DELEGATED) }
    /// ICAL_PARTSTAT_COMPLETED
    public static var COMPLETED: Parameter.Partstat { .init(ICAL_PARTSTAT_COMPLETED) }
    /// ICAL_PARTSTAT_INPROCESS
    public static var INPROCESS: Parameter.Partstat { .init(ICAL_PARTSTAT_INPROCESS) }
    /// ICAL_PARTSTAT_FAILED
    public static var FAILED: Parameter.Partstat { .init(ICAL_PARTSTAT_FAILED) }
    /// ICAL_PARTSTAT_NONE
    public static var NONE: Parameter.Partstat { .init(ICAL_PARTSTAT_NONE) }
    /// [Parameter.Partstat]
    public static var allCases: [Parameter.Partstat] {
        return [X, NEEDSACTION, ACCEPTED, DECLINED, TENTATIVE, DELEGATED, COMPLETED, INPROCESS, FAILED, NONE]
    }
}

// MARK: - Wrap<icalparameter_required>
extension Parameter.Required {
    /// ICAL_REQUIRED_X
    public static var X: Parameter.Required { .init(ICAL_REQUIRED_X) }
    /// ICAL_REQUIRED_TRUE
    public static var TRUE: Parameter.Required { .init(ICAL_REQUIRED_TRUE) }
    /// ICAL_REQUIRED_FALSE
    public static var FALSE: Parameter.Required { .init(ICAL_REQUIRED_FALSE) }
    /// ICAL_REQUIRED_NONE
    public static var NONE: Parameter.Required { .init(ICAL_REQUIRED_NONE) }
    /// [Parameter.Required]
    public static var allCases: [Parameter.Required] {
        return [X, TRUE, FALSE, NONE]
    }
}

// MARK: - Wrap<icalparameter_substate>
extension Parameter.SubState {
    /// ICAL_SUBSTATE_X
    public static var X: Parameter.SubState { .init(ICAL_SUBSTATE_X) }
    /// ICAL_SUBSTATE_OK
    public static var OK: Parameter.SubState { .init(ICAL_SUBSTATE_OK) }
    /// ICAL_SUBSTATE_ERROR
    public static var ERROR: Parameter.SubState { .init(ICAL_SUBSTATE_ERROR) }
    /// ICAL_SUBSTATE_SUSPENDED
    public static var SUSPENDED: Parameter.SubState { .init(ICAL_SUBSTATE_SUSPENDED) }
    /// ICAL_SUBSTATE_NONE
    public static var NONE: Parameter.SubState { .init(ICAL_SUBSTATE_NONE) }
    /// [Parameter.SubState]
    public static var allCases: [Parameter.SubState] {
        return [X, OK, ERROR, SUSPENDED, NONE]
    }
}

// MARK: - Wrap<icalparameter_patchaction>
extension Parameter.PatchAction {
    /// ICAL_PATCHACTION_X
    public static var X: Parameter.PatchAction { .init(ICAL_PATCHACTION_X) }
    /// ICAL_PATCHACTION_CREATE
    public static var CREATE: Parameter.PatchAction { .init(ICAL_PATCHACTION_CREATE) }
    /// ICAL_PATCHACTION_BYNAME
    public static var BYNAME: Parameter.PatchAction { .init(ICAL_PATCHACTION_BYNAME) }
    /// ICAL_PATCHACTION_BYVALUE
    public static var BYVALUE: Parameter.PatchAction { .init(ICAL_PATCHACTION_BYVALUE) }
    /// ICAL_PATCHACTION_BYPARAM
    public static var BYPARAM: Parameter.PatchAction { .init(ICAL_PATCHACTION_BYPARAM) }
    /// ICAL_PATCHACTION_NONE
    public static var NONE: Parameter.PatchAction { .init(ICAL_PATCHACTION_NONE) }
    /// [Parameter.PatchAction]
    public static var allCases: [Parameter.PatchAction] {
        return [X, CREATE, BYNAME, BYVALUE, BYPARAM, NONE]
    }
}

// MARK: - Wrap<icalparameter_stayinformed>
extension Parameter.StayInformed {
    /// ICAL_STAYINFORMED_X
    public static var X: Parameter.StayInformed { .init(ICAL_STAYINFORMED_X) }
    /// ICAL_STAYINFORMED_TRUE
    public static var TRUE: Parameter.StayInformed { .init(ICAL_STAYINFORMED_TRUE) }
    /// ICAL_STAYINFORMED_FALSE
    public static var FALSE: Parameter.StayInformed { .init(ICAL_STAYINFORMED_FALSE) }
    /// ICAL_STAYINFORMED_NONE
    public static var NONE: Parameter.StayInformed { .init(ICAL_STAYINFORMED_NONE) }
    /// [Parameter.StayInformed]
    public static var allCases: [Parameter.StayInformed] {
        return [X, TRUE, FALSE, NONE]
    }
}

// MARK: - Wrap<icalparameter_scheduleagent>
extension Parameter.ScheduleAgent {
    /// ICAL_SCHEDULEAGENT_X
    public static var X: Parameter.ScheduleAgent { .init(ICAL_SCHEDULEAGENT_X) }
    /// ICAL_SCHEDULEAGENT_SERVER
    public static var SERVER: Parameter.ScheduleAgent { .init(ICAL_SCHEDULEAGENT_SERVER) }
    /// ICAL_SCHEDULEAGENT_CLIENT
    public static var CLIENT: Parameter.ScheduleAgent { .init(ICAL_SCHEDULEAGENT_CLIENT) }
    /// ICAL_SCHEDULEAGENT_NONE
    public static var NONE: Parameter.ScheduleAgent { .init(ICAL_SCHEDULEAGENT_NONE) }
    /// [Parameter.ScheduleAgent]
    public static var allCases: [Parameter.ScheduleAgent] {
        return [X, SERVER, CLIENT, NONE]
    }
}

// MARK: - Wrap<icalparameter_xlicerrortype>
extension Parameter.xlicErrorType {
    /// ICAL_XLICERRORTYPE_X
    public static var X: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_X) }
    /// ICAL_XLICERRORTYPE_COMPONENTPARSEERROR
    public static var COMPONENTPARSEERROR: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_COMPONENTPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PROPERTYPARSEERROR
    public static var PROPERTYPARSEERROR: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_PROPERTYPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR
    public static var PARAMETERNAMEPARSEERROR: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR
    public static var PARAMETERVALUEPARSEERROR: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_VALUEPARSEERROR
    public static var VALUEPARSEERROR: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_VALUEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_INVALIDITIP
    public static var INVALIDITIP: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_INVALIDITIP) }
    /// ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR
    public static var UNKNOWNVCALPROPERROR: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR) }
    /// ICAL_XLICERRORTYPE_MIMEPARSEERROR
    public static var MIMEPARSEERROR: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_MIMEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_VCALPROPPARSEERROR
    public static var VCALPROPPARSEERROR: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_VCALPROPPARSEERROR) }
    /// ICAL_XLICERRORTYPE_NONE
    public static var NONE: Parameter.xlicErrorType { .init(ICAL_XLICERRORTYPE_NONE) }
    /// [Parameter.xlicErrorType]
    public static var allCases: [Parameter.xlicErrorType] {
        return [X, COMPONENTPARSEERROR, PROPERTYPARSEERROR, PARAMETERNAMEPARSEERROR, PARAMETERVALUEPARSEERROR, VALUEPARSEERROR, INVALIDITIP, UNKNOWNVCALPROPERROR, MIMEPARSEERROR, VCALPROPPARSEERROR, NONE]
    }
}

// MARK: - Wrap<icalparameter_xliccomparetype>
extension Parameter.xlicCompareType {
    /// ICAL_XLICCOMPARETYPE_X
    public static var X: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_X) }
    /// ICAL_XLICCOMPARETYPE_EQUAL
    public static var EQUAL: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_EQUAL) }
    /// ICAL_XLICCOMPARETYPE_NOTEQUAL
    public static var NOTEQUAL: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_NOTEQUAL) }
    /// ICAL_XLICCOMPARETYPE_LESS
    public static var LESS: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_LESS) }
    /// ICAL_XLICCOMPARETYPE_GREATER
    public static var GREATER: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_GREATER) }
    /// ICAL_XLICCOMPARETYPE_LESSEQUAL
    public static var LESSEQUAL: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_LESSEQUAL) }
    /// ICAL_XLICCOMPARETYPE_GREATEREQUAL
    public static var GREATEREQUAL: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_GREATEREQUAL) }
    /// ICAL_XLICCOMPARETYPE_REGEX
    public static var REGEX: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_REGEX) }
    /// ICAL_XLICCOMPARETYPE_ISNULL
    public static var ISNULL: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_ISNULL) }
    /// ICAL_XLICCOMPARETYPE_ISNOTNULL
    public static var ISNOTNULL: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_ISNOTNULL) }
    /// ICAL_XLICCOMPARETYPE_NONE
    public static var NONE: Parameter.xlicCompareType { .init(ICAL_XLICCOMPARETYPE_NONE) }
    /// [Parameter.xlicCompareType]
    public static var allCases: [Parameter.xlicCompareType] {
        return [X, EQUAL, NOTEQUAL, LESS, GREATER, LESSEQUAL, GREATEREQUAL, REGEX, ISNULL, ISNOTNULL, NONE]
    }
}

// MARK: - Wrap<icalparameter_scheduleforcesend>
extension Parameter.ScheduleForceSend {
    /// ICAL_SCHEDULEFORCESEND_X
    public static var X: Parameter.ScheduleForceSend { .init(ICAL_SCHEDULEFORCESEND_X) }
    /// ICAL_SCHEDULEFORCESEND_REQUEST
    public static var REQUEST: Parameter.ScheduleForceSend { .init(ICAL_SCHEDULEFORCESEND_REQUEST) }
    /// ICAL_SCHEDULEFORCESEND_REPLY
    public static var REPLY: Parameter.ScheduleForceSend { .init(ICAL_SCHEDULEFORCESEND_REPLY) }
    /// ICAL_SCHEDULEFORCESEND_NONE
    public static var NONE: Parameter.ScheduleForceSend { .init(ICAL_SCHEDULEFORCESEND_NONE) }
    /// [Parameter.ScheduleForceSend]
    public static var allCases: [Parameter.ScheduleForceSend] {
        return [X, REQUEST, REPLY, NONE]
    }
}
