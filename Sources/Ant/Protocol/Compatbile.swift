//
//  Compatbile.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit

/// CompatbileWrapper
struct CompatbileWrapper<Base> {
    internal let base: Base
    internal init(_ base: Base) {
        self.base = base
    }
}

/// Compatbile
protocol Compatbile: AnyObject {}
extension Compatbile {
    
    /// CompatbileWrapper<Self>
    internal var hub: CompatbileWrapper<Self> {
        get { .init(self) }
        set {}
    }
}

/// CompatbileValue
protocol CompatbileValue {}
extension CompatbileValue {
    
    /// CompatbileWrapper<Self>
    internal var hub: CompatbileWrapper<Self> {
        get { .init(self) }
        set {}
    }
}

