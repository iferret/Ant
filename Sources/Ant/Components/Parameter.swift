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
    
    /// 析构函数
    deinit {
        icalparameter_free(origin)
    }
}
