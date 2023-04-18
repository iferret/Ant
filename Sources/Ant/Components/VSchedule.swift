//
//  Schedule.swift
//  
//
//  Created by iferret's on 2023/4/18.
//

import UIKit
import libical

public class VSchedule: Component {

    // MARK: 生命周期
    
    /// 构建
    /// - Parameter value: String
    public convenience init(rfc5545 value: String) throws {
        guard let rawValue = icalcomponent_new_from_string(value) else {
            throw icalerror.illegal(value)
        }
        guard icalcomponent_isa(rawValue).hub.wrap() == .VSCHEDULE else {
            throw icalerror.mismatch(value)
        }
        self.init(rawValue)
    }
    
    /// 构建
    public convenience init() {
        self.init(icalcomponent_new(Wrap<icalcomponent_kind>.VSCHEDULE.rawValue))
    }
    
}
