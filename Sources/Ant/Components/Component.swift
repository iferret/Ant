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
    
    /// 组件类别
    public var kind: Kind { .init(icalcomponent_isa(icalValue)) }
    /// 子组件
    public var components: [Component] {
        return Component.Kind.allCases.reduce([], { $0 + icalcomponent_get_array_component(from: icalValue, kind: $1.rawValue).map { Component($0) } })
    }
    /// 获取属性列表
    public var properties: [Property] {
        return Property.Kind.allCases.reduce([], { $0 + icalcomponent_get_array_property(from: icalValue, kind: $1.rawValue).map { Property($0) } })
    }
    
    // MARK: 私有属性
    
    /// icalcomponent
    internal let icalValue: icalcomponent
    
    // MARK: 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalcomponent
    internal init(_ rawValue: icalcomponent) {
        self.icalValue = rawValue
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
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
        self.init(icalcomponent_new_clone(other.icalValue))
    }
    
    /// 析构函数
    deinit {
        icalcomponent_free(icalValue)
    }
}
