//
//  ViewController.swift
//  StyleTestApp
//
//  Created by Karol Wieczorek on 22.04.2016.
//  Copyright © 2016 Tooploox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label0: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let styleV: Style<UIView> = BackgroundColor(color: UIColor.redColor()) + RoundedCorners(radius: 10.0)
        let styleL: Style<UILabel> = styleV as! Style<UILabel>
        
        label0.apply(styleV)
        
//        let style0 = BackgroundColor<UILabel>(color: UIColor.blueColor())
//        let style1 = TextColor(color: UIColor.redColor())
        
//        let stylex = (style0 + style1)
        
        AppStyles.NormalLabelStyle.stylize(label0)
        AppStyles.SelectedLabelStyle.stylize(label1)
    }
}