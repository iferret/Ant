//
//  Component.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

public class Component: NSObject {
    
    // MARK: 公开属性
    
    /// Wrap<icalcomponent_kind>
    public var kind: Wrap<icalcomponent_kind> { icalcomponent_isa(origin).hub.wrap() }
    /// 子组件
    public var components: [Component] {
        return Wrap<icalcomponent_kind>.allCases.reduce([], { $0 + icalcomponent_get_array_component(from: origin, kind: $1.rawValue).map { Component($0) } })
    }
    /// 获取属性列表
    public var properties: [Property] {
        return Wrap<icalproperty_kind>.allCases.reduce([], { $0 + icalcomponent_get_array_property(from: origin, kind: $1.rawValue).map { Property($0) } })
    }
    
    // MARK: 私有属性
    
    /// icalcomponent
    internal let origin: icalcomponent
    
    // MARK: 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalcomponent
    internal init(_ rawValue: icalcomponent) {
        self.origin = rawValue
    }
    
    /// 构建
    /// - Parameter kind: Wrap<icalcomponent_kind>
    public convenience init(kind: Wrap<icalcomponent_kind>) {
        self.init(icalcomponent_new(kind.rawValue))
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) throws {
        guard let newValue = icalcomponent_new_from_string(rfc5545) else {
            throw icalerror.illegal(rfc5545)
        }
        self.init(newValue)
    }
    
    /// 构建
    /// - Parameter other: Component
    public convenience init(other: Component) {
        self.init(icalcomponent_new_clone(other.origin))
    }
    
    /// 析构函数
    deinit {
        icalcomponent_free(origin)
    }
}
