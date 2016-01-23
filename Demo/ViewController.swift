//
//  ViewController.swift
//  Demo
//
//  Created by Gesen on 16/1/23.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.theme_backgroundColor = ThemePicker(colorKeyPath: "Global.backgroundColor")
    }
    
    var toggle: Bool = false
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        toggle = !toggle
        ThemeManager.setTheme(toggle ? "Night" : "Day", path: .MainBundle)
    }

}

