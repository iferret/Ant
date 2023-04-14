//
//  UnsafePointer+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit

extension UnsafeMutablePointer: CompatbileValue {}
extension UnsafePointer: CompatbileValue {}
extension CompatbileWrapper where Base == UnsafePointer<CChar> {
    
    /// wrap
    /// - Returns: String
    internal func wrap() -> String {
        return .init(cString: base)
    }
}
