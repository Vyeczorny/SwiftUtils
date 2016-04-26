//
//  ViewStyle.swift
//  StyleTestApp
//
//  Created by Karol Wieczorek on 22.04.2016.
//  Copyright © 2016 Tooploox. All rights reserved.
//

import UIKit

class Style<T> {
    let stylize: (T -> Void)
    
    init(stylize: T -> Void) {
        self.stylize = stylize
    }
}

// Operators

infix operator + { associativity right }
func + <T>(left: Style<T>, right: Style<T>) -> Style<T> {
    return Style { view in
        left.stylize(view)
        right.stylize(view)
    }
}

// UIView

class BackgroundColor<T: UIView> : Style<T> {
    init(color: UIColor) {
        super.init { (view) in
            view.layer.backgroundColor = color.CGColor
        }
    }
}

class TintColor<T: UIView> : Style<T> {
    init(color: UIColor) {
        super.init { view in
            view.tintColor = color
        }
    }
}

class Border<T: UIView> : Style<T> {
    init(thickness: CGFloat, color: UIColor) {
        super.init { view in
            view.layer.borderWidth = thickness
            view.layer.borderColor = color.CGColor
        }
    }
}

class RoundedCorners<T: UIView> : Style<T> {
    init(radius: CGFloat) {
        super.init { view in
            view.layer.cornerRadius = radius
        }
    }
}

// UILabel

class TextColor<T: UILabel>: Style<T> {
    init(color: UIColor) {
        super.init { (label) in
            label.textColor = color
        }
    }
}

class TextAlignment<T: UILabel>: Style<T> {
    init(alignment: NSTextAlignment) {
        super.init { label in
            label.textAlignment = alignment
        }
    }
}

class TextFont<T: UILabel>: Style<T> {
    init(font: UIFont) {
        super.init { label in
            label.font = font
        }
    }
}

// UIButton

class BackgroundImage<T: UIButton>: Style<T> {
    init(image: UIImage) {
        super.init { button in
            button.setBackgroundImage(image, forState: .Normal)
            button.setBackgroundImage(image, forState: .Selected)
        }
    }
}