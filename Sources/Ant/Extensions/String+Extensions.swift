//
//  String+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit

extension String: CompatbileValue {}
extension CompatbileWrapper where Base == String {
    
    /// likes
    /// - Parameter text: String
    /// - Returns: Bool
    internal func likes(_ text: String) -> Bool {
        return NSPredicate(format: "SELF LIKE[cd] %@", text).evaluate(with: base) == true
    }
}
