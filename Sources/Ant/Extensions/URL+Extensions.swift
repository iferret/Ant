//
//  URL+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit

extension URL: CompatbileValue {}
extension CompatbileWrapper where Base == URL {
    
    /// String
    internal var path: String {
        if #available(iOS 16.0, *) {
            return base.path(percentEncoded: false)
        } else {
            return base.path
        }
    }
}
