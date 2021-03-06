//
//  Shadow.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2019-05-19.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import UIKit

public struct Shadow {
    
    public init(
        alpha: Float,
        blur: CGFloat,
        color: UIColor = .black,
        spread: CGFloat = 0,
        x: CGFloat,
        y: CGFloat) {
        self.alpha = alpha
        self.blur = blur
        self.color = color
        self.spread = spread
        self.x = x
        self.y = y
    }
    
    public let alpha: Float
    public let blur: CGFloat
    public let color: UIColor
    public let spread: CGFloat
    public let x: CGFloat
    public let y: CGFloat
}
