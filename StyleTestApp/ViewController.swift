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
        
        AppStyles.NormalLabelStyle.stylize(label0)
        AppStyles.SelectedLabelStyle.stylize(label1)
    }
}