//
//  TimeZone+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

extension Foundation.TimeZone {
    
    /// TimeZone
    internal static var UTC: Foundation.TimeZone {
        return .init(secondsFromGMT: 0)!
    }
}

extension Foundation.TimeZone: CompatbileValue {}
extension CompatbileWrapper where Base == Foundation.TimeZone {
    
    /// Bool
    internal var isUTC: Bool {
        return base.identifier.hub.likes("GMT") == true
    }
    
    /// icaltimezone
    internal var icaltimezone: UnsafeMutablePointer<icaltimezone> {
        if base.hub.isUTC == true {
            return icaltimezone_get_utc_timezone()
        } else if let zone = icaltimezone_get_builtin_timezone_from_tzid(base.identifier) {
            return zone
        } else {
            return icaltimezone_get_utc_timezone()
        }
    }
}

extension CompatbileWrapper where Base == UnsafePointer<icaltimezone> {
    
    /// TimeZone
    internal var timeZone: Foundation.TimeZone {
        if let tzid = icaltimezone_get_tzid(.init(mutating: .init(base))) {
            return .init(identifier: .init(cString: tzid)) ?? .UTC
        } else {
            return .UTC
        }
    }
}
