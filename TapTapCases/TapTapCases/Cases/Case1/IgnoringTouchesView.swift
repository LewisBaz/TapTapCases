//
//  IgnoringTouchesView.swift
//  TapTapCases
//
//  Created by Lewis on 14.10.2024.
//

import UIKit

final class IgnoringTouchesView: UIView {
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        for child in self.subviews {
            let childPoint = self.convert(point, to: child)
            if child.point(inside: childPoint, with: event) {
                return child
            }
        }
        
        return nil
    }
}
