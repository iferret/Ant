//
//  Attachment.swift
//  
//
//  Created by iferret's on 2023/4/17.
//

import UIKit
import libical

public class Attachment {
    
    // MARK: 公开属性
    
    /// URL
    public var url: URL? {
        guard icalattach_get_is_url(origin) > 0 else { return nil }
        return icalattach_get_url(origin)?.hub.wrap().hub.toURL()
    }

    // MARK: 私有属性
    
    /// icalattach
    internal let origin: icalattach
    
    // MARK: 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalattach
    internal init?(_ rawValue: icalattach?) {
        if let rawValue = rawValue {
            self.origin = rawValue
        } else {
            return nil
        }
    }
  
}


extension Attachment {
    
    /// 构建
    /// - Parameter url: URL
    public convenience init(fileURL url: URL) {
        self.init(icalattach_new_from_url(url.absoluteString))!
    }
}
