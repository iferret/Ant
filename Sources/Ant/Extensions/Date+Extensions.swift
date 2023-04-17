//
//  Date+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import Foundation
import libical

extension Date: CompatbileValue {}
extension CompatbileWrapper where Base == Date {
    
    /// icaltimetype
    internal var icaltimetype: icaltimetype {
        let cmpts: DateComponents = Foundation.Calendar.autoupdatingCurrent.dateComponents([.year, .month, .day, .hour, .minute, .second, .timeZone], from: base)
        var zone: UnsafeMutablePointer<icaltimezone>? = nil
        if cmpts.timeZone?.hub.isUTC == true {
            zone = icaltimezone_get_utc_timezone()
        } else if let tzid = cmpts.timeZone?.identifier {
            zone = icaltimezone_get_builtin_timezone_from_tzid(tzid)
        }
        return .init(year: Int32(cmpts.year ?? 0),
                     month: Int32(cmpts.month ?? 0),
                     day: Int32(cmpts.day ?? 0),
                     hour: Int32(cmpts.hour ?? 0),
                     minute: Int32(cmpts.minute ?? 0),
                     second: Int32(cmpts.second ?? 0),
                     is_date: 0,
                     is_daylight: 0,
                     zone: zone)
    }
}

extension icaltimetype: CompatbileValue {}
extension CompatbileWrapper where Base == icaltimetype {
    
    /// wrap
    /// - Returns: Date
    internal func wrap() -> Date {
        let cmpts: DateComponents = .init(calendar: .autoupdatingCurrent,
                                          timeZone: icaltime_get_timezone(base).hub.timeZone,
                                          year: Int(base.day),
                                          month: Int(base.month),
                                          day: Int(base.day),
                                          hour: Int(base.hour),
                                          minute: Int(base.minute),
                                          second: Int(base.second))
        return cmpts.date ?? .init()
    }
}
