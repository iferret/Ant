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

}

extension Parameter {
    
    /// icalFormat
    /// - Returns: String
    public func icalFormat() -> String {
        if let value = icalparameter_as_ical_string(origin) {
            return .init(cString: value)
        } else {
            return ""
        }
    }
    
    /// String
    public override var description: String {
        return icalFormat()
    }
}

extension Parameter {
    
    /// icalparameter_new_actionparam
    /// - Parameter wrap: Wrap<icalparameter_action>
    public convenience init(action wrap: Wrap<icalparameter_action>) {
        self.init(icalparameter_new_actionparam(wrap.rawValue))
    }
    
    /// icalparameter_new_altrep
    /// - Parameter value: String
    public convenience init(altrep value: String) {
        self.init(icalparameter_new_altrep(value))
    }
    
    /// icalparameter_new_charset
    /// - Parameter value: String
    public convenience init(charset value: String) {
        self.init(icalparameter_new_charset(value))
    }
    
    /// icalparameter_new_cn
    /// - Parameter value: String
    public convenience init(cn value: String) {
        self.init(icalparameter_new_cn(value))
    }
    
    /// icalparameter_new_cutype
    /// - Parameter wrap: Wrap<icalparameter_cutype>
    public convenience init(cutype wrap: Wrap<icalparameter_cutype>) {
        self.init(icalparameter_new_cutype(wrap.rawValue))
    }
    
    /// icalparameter_new_delegatedfrom
    /// - Parameter value: String
    public convenience init(delegatedfrom value: String) {
        self.init(icalparameter_new_delegatedfrom(value))
    }
    
    /// icalparameter_new_delegatedto
    /// - Parameter value: String
    public convenience init(delegatedto value: String) {
        self.init(icalparameter_new_delegatedto(value))
    }
    
    /// icalparameter_new_dir
    /// - Parameter value: String
    public convenience init(dir value: String) {
        self.init(icalparameter_new_dir(value))
    }
    
    /// icalparameter_new_display
    /// - Parameter wrap: Wrap<icalparameter_display>
    public convenience init(display wrap: Wrap<icalparameter_display>) {
        self.init(icalparameter_new_display(wrap.rawValue))
    }
    
    /// icalparameter_new_email
    /// - Parameter value: String
    public convenience init(email value: String) {
        self.init(icalparameter_new_email(value))
    }
    
    /// icalparameter_new_enable
    /// - Parameter wrap: Wrap<icalparameter_enable>
    public convenience init(enable wrap: Wrap<icalparameter_enable>) {
        self.init(icalparameter_new_enable(wrap.rawValue))
    }
    
    /// icalparameter_new_encoding
    /// - Parameter wrap: Wrap<icalparameter_encoding>
    public convenience init(encoding wrap: Wrap<icalparameter_encoding>) {
        self.init(icalparameter_new_encoding(wrap.rawValue))
    }
    
    /// icalparameter_new_fbtype
    /// - Parameter wrap: Wrap<icalparameter_fbtype>
    public convenience init(fbtype wrap: Wrap<icalparameter_fbtype>) {
        self.init(icalparameter_new_fbtype(wrap.rawValue))
    }
    
    /// icalparameter_new_feature
    /// - Parameter wrap: Wrap<icalparameter_feature>
    public convenience init(feature wrap: Wrap<icalparameter_feature>) {
        self.init(icalparameter_new_feature(wrap.rawValue))
    }
    
    /// icalparameter_new_filename
    /// - Parameter value: String
    public convenience init(filename value: String) {
        self.init(icalparameter_new_filename(value))
    }
    
    /// icalparameter_new_fmttype
    /// - Parameter value: String
    public convenience init(fmttype value: String) {
        self.init(icalparameter_new_fmttype(value))
    }
    
    /// icalparameter_new_iana
    /// - Parameter value: String
    public convenience init(iana value: String) {
        self.init(icalparameter_new_iana(value))
    }
    
    /// icalparameter_new_id
    /// - Parameter value: String
    public convenience init(id value: String) {
        self.init(icalparameter_new_id(value))
    }
    
    /// icalparameter_new_label
    /// - Parameter value: String
    public convenience init(label value: String) {
        self.init(icalparameter_new_label(value))
    }
    
    /// icalparameter_new_language
    /// - Parameter value: String
    public convenience init(language value: String) {
        self.init(icalparameter_new_language(value))
    }
    
    /// icalparameter_new_latency
    /// - Parameter value: String
    public convenience init(latency value: String) {
        self.init(icalparameter_new_latency(value))
    }
    
    /// icalparameter_new_local
    /// - Parameter wrap: Wrap<icalparameter_local>
    public convenience init(local wrap: Wrap<icalparameter_local>) {
        self.init(icalparameter_new_local(wrap.rawValue))
    }
    
    /// icalparameter_new_localize
    /// - Parameter value: String
    public convenience init(localize value: String) {
        self.init(icalparameter_new_localize(value))
    }
    
    /// icalparameter_new_managedid
    /// - Parameter value: String
    public convenience init(managedID value: String) {
        self.init(icalparameter_new_managedid(value))
    }
    
    /// icalparameter_new_member
    /// - Parameter value: String
    public convenience init(member value: String) {
        self.init(icalparameter_new_member(value))
    }
    
    /// icalparameter_new_modified
    /// - Parameter value: String
    public convenience init(modified value: String) {
        self.init(icalparameter_new_modified(value))
    }
    
    /// icalparameter_new_options
    /// - Parameter value: String
    public convenience init(options value: String) {
        self.init(icalparameter_new_options(value))
    }
    
    /// icalparameter_new_partstat
    /// - Parameter wrap: Wrap<icalparameter_partstat>
    public convenience init(partstat wrap: Wrap<icalparameter_partstat>) {
        self.init(icalparameter_new_partstat(wrap.rawValue))
    }
    
    /// icalparameter_new_patchaction
    /// - Parameter wrap: Wrap<icalparameter_patchaction>
    public convenience init(patchAction wrap: Wrap<icalparameter_patchaction>) {
        self.init(icalparameter_new_patchaction(wrap.rawValue))
    }
    
    /// icalparameter_new_publiccomment
    /// - Parameter value: String
    public convenience init(publiccomment value: String) {
        self.init(icalparameter_new_publiccomment(value))
    }
    
    /// icalparameter_new_range
    /// - Parameter wrap: Wrap<icalparameter_range>
    public convenience init(range wrap: Wrap<icalparameter_range>) {
        self.init(icalparameter_new_range(wrap.rawValue))
    }
    
    /// icalparameter_new_reason
    /// - Parameter value: String
    public convenience init(reason value: String) {
        self.init(icalparameter_new_reason(value))
    }
    
    /// icalparameter_new_related
    /// - Parameter wrap: Wrap<icalparameter_related>
    public convenience init(related wrap: Wrap<icalparameter_related>) {
        self.init(icalparameter_new_related(wrap.rawValue))
    }
    
    /// icalparameter_new_reltype
    /// - Parameter wrap: Wrap<icalparameter_reltype>
    public convenience init(reltype wrap: Wrap<icalparameter_reltype>) {
        self.init(icalparameter_new_reltype(wrap.rawValue))
    }
    
    /// icalparameter_new_required
    /// - Parameter wrap: Wrap<icalparameter_required>
    public convenience init(required wrap: Wrap<icalparameter_required>) {
        self.init(icalparameter_new_required(wrap.rawValue))
    }
    
    /// icalparameter_new_response
    /// - Parameter value: Int32
    public convenience init(response value: Int32) {
        self.init(icalparameter_new_response(value))
    }
    
    /// icalparameter_new_role
    /// - Parameter wrap: Wrap<icalparameter_role>
    public convenience init(role wrap: Wrap<icalparameter_role>) {
        self.init(icalparameter_new_role(wrap.rawValue))
    }
    
    /// icalparameter_new_rsvp
    /// - Parameter wrap: Wrap<icalparameter_rsvp>
    public convenience init(rsvp wrap: Wrap<icalparameter_rsvp>) {
        self.init(icalparameter_new_rsvp(wrap.rawValue))
    }
    
    /// icalparameter_new_scheduleagent
    /// - Parameter wrap: Wrap<icalparameter_scheduleagent>
    public convenience init(scheduleAgent wrap: Wrap<icalparameter_scheduleagent>) {
        self.init(icalparameter_new_scheduleagent(wrap.rawValue))
    }
    
    /// icalparameter_new_scheduleforcesend
    /// - Parameter wrap: Wrap<icalparameter_scheduleforcesend>
    public convenience init(scheduleForceSend wrap: Wrap<icalparameter_scheduleforcesend>) {
        self.init(icalparameter_new_scheduleforcesend(wrap.rawValue))
    }
    
    /// icalparameter_new_schedulestatus
    /// - Parameter value: String
    public convenience init(scheduleStatus value: String) {
        self.init(icalparameter_new_schedulestatus(value))
    }
    
    /// icalparameter_new_sentby
    /// - Parameter value: String
    public convenience init(sentby value: String) {
        self.init(icalparameter_new_sentby(value))
    }
    
    /// icalparameter_new_size
    /// - Parameter value: String
    public convenience init(size value: String) {
        self.init(icalparameter_new_size(value))
    }
    
    /// icalparameter_new_stayinformed
    /// - Parameter wrap: Wrap<icalparameter_stayinformed>
    public convenience init(stayInformed wrap: Wrap<icalparameter_stayinformed>) {
        self.init(icalparameter_new_stayinformed(wrap.rawValue))
    }
    
    /// icalparameter_new_substate
    /// - Parameter wrap: Wrap<icalparameter_substate>
    public convenience init(substate wrap: Wrap<icalparameter_substate>) {
        self.init(icalparameter_new_substate(wrap.rawValue))
    }
    
    /// icalparameter_new_tzid
    /// - Parameter value: String
    public convenience init(tzid value: String) {
        self.init(icalparameter_new_tzid(value))
    }
    
    /// icalparameter_new_value
    /// - Parameter wrap: Wrap<icalparameter_value>
    public convenience init(value wrap: Wrap<icalparameter_value>) {
        self.init(icalparameter_new_value(wrap.rawValue))
    }
    
    /// icalparameter_new_x
    /// - Parameter value: String
    public convenience init(x value: String) {
        self.init(icalparameter_new_x(value))
    }
    
    /// icalparameter_new_xliccomparetype
    /// - Parameter wrap: Wrap<icalparameter_xliccomparetype>
    public convenience init(xlicCompareType wrap: Wrap<icalparameter_xliccomparetype>) {
        self.init(icalparameter_new_xliccomparetype(wrap.rawValue))
    }
    
    /// icalparameter_new_xlicerrortype
    /// - Parameter wrap: Wrap<icalparameter_xlicerrortype>
    public convenience init(xlicErrorType wrap: Wrap<icalparameter_xlicerrortype>) {
        self.init(icalparameter_new_xlicerrortype(wrap.rawValue))
    }
    
}

extension Parameter {
    
    /// Any
    public var rawValue: Any? {
        switch kind {
        case .ACTIONPARAM:          return icalparameter_get_actionparam(origin).hub.wrap()
        case .ALTREP:               return icalparameter_get_altrep(origin)?.hub.wrap()
        case .CHARSET:              return icalparameter_get_charset(origin)?.hub.wrap()
        case .CN:                   return icalparameter_get_cn(origin)?.hub.wrap()
        case .CUTYPE:               return icalparameter_get_cutype(origin).hub.wrap()
        case .DELEGATEDFROM:        return icalparameter_get_delegatedfrom(origin)?.hub.wrap()
        case .DELEGATEDTO:          return icalparameter_get_delegatedto(origin)?.hub.wrap()
        case .DIR:                  return icalparameter_get_dir(origin)?.hub.wrap()
        case .DISPLAY:              return icalparameter_get_dir(origin)?.hub.wrap()
        case .EMAIL:                return icalparameter_get_email(origin)?.hub.wrap()
        case .ENABLE:               return icalparameter_get_enable(origin).hub.wrap()
        case .ENCODING:             return icalparameter_get_encoding(origin).hub.wrap()
        case .FBTYPE:               return icalparameter_get_fbtype(origin).hub.wrap()
        case .FEATURE:              return icalparameter_get_feature(origin).hub.wrap()
        case .FILENAME:             return icalparameter_get_filename(origin)?.hub.wrap()
        case .FMTTYPE:              return icalparameter_get_fmttype(origin)?.hub.wrap()
        case .IANA:                 return icalparameter_get_iana(origin)?.hub.wrap()
        case .ID:                   return icalparameter_get_id(origin)?.hub.wrap()
        case .LABEL:                return icalparameter_get_label(origin)?.hub.wrap()
        case .LANGUAGE:             return icalparameter_get_language(origin)?.hub.wrap()
        case .LATENCY:              return icalparameter_get_latency(origin)?.hub.wrap()
        case .LOCAL:                return icalparameter_get_local(origin).hub.wrap()
        case .LOCALIZE:             return icalparameter_get_localize(origin)?.hub.wrap()
        case .MANAGEDID:            return icalparameter_get_managedid(origin)?.hub.wrap()
        case .MEMBER:               return icalparameter_get_member(origin)?.hub.wrap()
        case .MODIFIED:             return icalparameter_get_modified(origin)?.hub.wrap()
        case .OPTIONS:              return icalparameter_get_options(origin)?.hub.wrap()
        case .PARTSTAT:             return icalparameter_get_partstat(origin).hub.wrap()
        case .PATCHACTION:          return icalparameter_get_patchaction(origin).hub.wrap()
        case .PUBLICCOMMENT:        return icalparameter_get_publiccomment(origin)?.hub.wrap()
        case .RANGE:                return icalparameter_get_range(origin).hub.wrap()
        case .REASON:               return icalparameter_get_reason(origin)?.hub.wrap()
        case .RELATED:              return icalparameter_get_related(origin).hub.wrap()
        case .RELTYPE:              return icalparameter_get_reltype(origin).hub.wrap()
        case .REQUIRED:             return icalparameter_get_required(origin).hub.wrap()
        case .RESPONSE:             return icalparameter_get_response(origin)
        case .ROLE:                 return icalparameter_get_role(origin).hub.wrap()
        case .RSVP:                 return icalparameter_get_rsvp(origin).hub.wrap()
        case .SCHEDULEAGENT:        return icalparameter_get_scheduleagent(origin).hub.wrap()
        case .SCHEDULEFORCESEND:    return icalparameter_get_scheduleforcesend(origin).hub.wrap()
        case .SCHEDULESTATUS:       return icalparameter_get_schedulestatus(origin)?.hub.wrap()
        case .SENTBY:               return icalparameter_get_sentby(origin)?.hub.wrap()
        case .SIZE:                 return icalparameter_get_size(origin)?.hub.wrap()
        case .STAYINFORMED:         return icalparameter_get_stayinformed(origin).hub.wrap()
        case .SUBSTATE:             return icalparameter_get_substate(origin).hub.wrap()
        case .TZID:                 return icalparameter_get_tzid(origin)?.hub.wrap()
        case .VALUE:                return icalparameter_get_value(origin).hub.wrap()
        case .X:                    return icalparameter_get_x(origin)?.hub.wrap()
        case .XLICCOMPARETYPE:      return icalparameter_get_xliccomparetype(origin).hub.wrap()
        case .XLICERRORTYPE:        return icalparameter_get_xlicerrortype(origin).hub.wrap()
        default:                    return nil
        }
    }
}
