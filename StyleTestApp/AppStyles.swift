//
//  AppStyles.swift
//  StyleTestApp
//
//  Created by Karol Wieczorek on 24.04.2016.
//  Copyright © 2016 Tooploox. All rights reserved.
//

import UIKit

struct AppStyles {
    
    static var DefaultLabelStyle: Style<UILabel> {
        return Border(thickness: 2.0, color: UIColor.darkGrayColor())
            + RoundedCorners(radius: 10.0)
            + TextFont(font: UIFont.systemFontOfSize(20.0))
            + TextColor(color: UIColor.blackColor())
            + TextAlignment(alignment: .Center)
    }
    
    static var NormalLabelStyle: Style<UILabel> {
        return AppStyles.DefaultLabelStyle
            + BackgroundColor(color: UIColor.lightGrayColor())
    }
    
    static var SelectedLabelStyle: Style<UILabel> {
        return AppStyles.DefaultLabelStyle
            + BackgroundColor(color: UIColor(red: 50.0 / 255.0, green: 150.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0))
            + TextColor(color: UIColor.whiteColor())
    }
}
