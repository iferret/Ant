//
//  Property.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import libical

public class Property: NSObject {
    
    // MARK: 公开属性
    
    /// 属性类别
    public var kind: Kind { .init(icalproperty_isa(origin)) }
    /// 参数列表
    public var parameters: [Parameter] {
        return Parameter.Kind.allCases.reduce([], { $0 + icalproperty_get_array_parameter(from: origin, kind: $1.rawValue).map { Parameter($0) } })
    }
    /// Value
    public var value: Value {
        get { .init(icalproperty_get_value(origin)) }
        set { icalproperty_set_value(origin, newValue.origin) }
    }
    
    // MARK: 私有属性
    
    /// icalproperty
    internal let origin: icalproperty
    
    // MARK: 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalproperty
    internal init(_ rawValue: icalproperty) {
        self.origin = rawValue
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
        self.init(icalproperty_new(kind.rawValue))
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) throws {
        guard let newValue = icalproperty_new_from_string(rfc5545) else {
            throw icalerror.illegal(rfc5545)
        }
        self.init(newValue)
    }
    
    /// 构建
    /// - Parameter other: Property
    public convenience init(other: Property) {
        self.init(icalproperty_new_clone(other.origin))
    }
    
    /// 析构函数
    deinit {
        icalproperty_free(origin)
    }
}

extension Property {
    
    /// 设置 value
    /// - Parameter value: Value
    public func setValue(_ value: Value) {
        icalproperty_set_value(origin, value.origin)
    }
    
    /// 添加参数
    /// - Parameter parameter: Parameter
    public func add(_ parameter: Parameter) {
        icalproperty_add_parameter(origin, parameter.origin)
    }
    
    /// 批量添加参数
    /// - Parameter parameters: [Parameter]
    public func add(_ parameters: [Parameter]) {
        parameters.forEach { add($0) }
    }
    
    /// 设置参数
    /// - Parameter parameter: Parameter
    public func set(_ parameter: Parameter) {
        icalproperty_set_parameter(origin, parameter.origin)
    }

    /// 删除参数
    /// - Parameter kind: Parameter.Kind
    public func removeAll(by kind: Parameter.Kind) {
        icalproperty_remove_parameter_by_kind(origin, kind.rawValue)
    }
    
    /// 删除参数
    /// - Parameter name: String
    public func removeAll(by name: String) {
        icalproperty_remove_parameter_by_name(origin, name)
    }
    
}
