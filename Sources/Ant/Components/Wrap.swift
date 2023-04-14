//
//  Wrap.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit

/// Wrap
public struct Wrap<T>: Hashable where T: RawRepresentable<UInt32> {
    public let rawValue: T
    
    /// 构建
    /// - Parameter rawValue: T
    public init(_ rawValue: T) {
        self.rawValue = rawValue
    }
    
    /// 构建
    /// - Parameter hasher: Hasher
    public func hash(into hasher: inout Hasher) {
        hasher.combine(rawValue.rawValue)
    }
    
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
