//
//  CLLocationCoordinate2D+Extensions.swift
//  
//
//  Created by iferret's on 2023/4/14.
//

import UIKit
import CoreLocation
import libical

extension CLLocationCoordinate2D: CompatbileValue {}
extension CompatbileWrapper where Base == CLLocationCoordinate2D {
    
    /// icalgeotype
    internal var icalgeotype: icalgeotype {
        return .init(lat: base.latitude, lon: base.longitude)
    }
}
