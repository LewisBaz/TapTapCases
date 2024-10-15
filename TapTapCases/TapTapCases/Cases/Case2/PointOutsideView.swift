//
//  PointOutsideView.swift
//  TapTapCases
//
//  Created by Lewis on 15.10.2024.
//

import UIKit

final class PointOutsideView: UIView {
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let inside = super.point(inside: point, with: event)
        if !inside {
            for subview in subviews {
                let pointInSubview = subview.convert(point, from: self)
                if subview.point(inside: pointInSubview, with: event) {
                    return true
                }
            }
        }
        return inside
    }
}
