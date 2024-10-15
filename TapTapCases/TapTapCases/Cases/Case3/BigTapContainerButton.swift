//
//  BigTapContainerButton.swift
//  TapTapCases
//
//  Created by Lewis on 15.10.2024.
//

import UIKit

final class BigTapContainerButton: UIButton {
    
    var touchPadding: UIEdgeInsets = .init(top: -100, left: -100, bottom: -100, right: -100)
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let rect = CGRect(origin: bounds.origin, size: bounds.size)
        let insetRect = rect.inset(by: touchPadding)
        return insetRect.contains(point)
    }
}
