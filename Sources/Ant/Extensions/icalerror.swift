//
//  icalerror.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit

/// icalerror
enum icalerror {
    case illegal(_ value: Any)
    case notfound(_ value: Any)
    case mismatch(_ value: Any)
    case operation(_ value: Any)
}

extension icalerror: Error {
    
    /// String
    internal var localizedDescription: String {
        switch self {
        case .illegal(let value):   return "\(value)"
        case .notfound(let value):  return "\(value)"
        case .mismatch(let value):  return "\(value)"
        case .operation(let value): return "\(value)"
        }
    }
}
